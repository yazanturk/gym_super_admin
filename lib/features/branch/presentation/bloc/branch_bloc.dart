import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/branch.dart';
import '../../domain/usecases/create_branch_usecase.dart';
import '../../domain/usecases/get_branches_usecase.dart';

part 'branch_bloc.freezed.dart';
part 'branch_event.dart';
part 'branch_state.dart';

@injectable
class BranchBloc extends Bloc<BranchEvent, BranchState> {
  final GetBranchesUseCase _getBranches;
  final CreateBranchUseCase _createBranch;

  BranchBloc(this._getBranches, this._createBranch)
      : super(const BranchState.initial()) {
    on<_LoadBranches>(_onLoad);
    on<_CreateBranch>(_onCreate);
    on<_DeleteBranch>(_onDelete);
  }

  Future<void> _onLoad(_LoadBranches event, Emitter<BranchState> emit) async {
    emit(const BranchState.loading());
    final result = await _getBranches(GetBranchesParams(brandId: event.brandId));
    result.fold(
      (f) => emit(BranchState.error(f.message)),
      (branches) => emit(BranchState.loaded(branches)),
    );
  }

  Future<void> _onCreate(_CreateBranch event, Emitter<BranchState> emit) async {
    emit(const BranchState.creating());
    final result = await _createBranch(
      CreateBranchParams(
        brandId: event.brandId,
        name: event.name,
        managerEmail: event.managerEmail,
        managerPassword: event.managerPassword,
        address: event.address,
        phone: event.phone,
        logoUrl: event.logoUrl,
      ),
    );
    result.fold(
      (f) => emit(BranchState.error(f.message)),
      (branch) => emit(BranchState.created(branch)),
    );
  }

  Future<void> _onDelete(_DeleteBranch event, Emitter<BranchState> emit) async {
    add(const BranchEvent.loadBranches());
  }
}
