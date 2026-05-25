import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/utils/usecase.dart';
import '../../domain/entities/brand.dart';
import '../../domain/usecases/create_brand_usecase.dart';
import '../../domain/usecases/get_brands_usecase.dart';

part 'brand_bloc.freezed.dart';
part 'brand_event.dart';
part 'brand_state.dart';

@injectable
class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final GetBrandsUseCase _getBrands;
  final CreateBrandUseCase _createBrand;

  BrandBloc(this._getBrands, this._createBrand) : super(const BrandState.initial()) {
    on<_LoadBrands>(_onLoad);
    on<_CreateBrand>(_onCreate);
    on<_DeleteBrand>(_onDelete);
  }

  Future<void> _onLoad(_LoadBrands event, Emitter<BrandState> emit) async {
    emit(const BrandState.loading());
    final result = await _getBrands(NoParams());
    result.fold(
      (f) => emit(BrandState.error(f.message)),
      (brands) => emit(BrandState.loaded(brands)),
    );
  }

  Future<void> _onCreate(_CreateBrand event, Emitter<BrandState> emit) async {
    emit(const BrandState.creating());
    final result = await _createBrand(
      CreateBrandParams(
        name: event.name,
        description: event.description,
        logoUrl: event.logoUrl,
      ),
    );
    result.fold(
      (f) => emit(BrandState.error(f.message)),
      (brand) => emit(BrandState.created(brand)),
    );
  }

  Future<void> _onDelete(_DeleteBrand event, Emitter<BrandState> emit) async {
    // Reload after delete
    add(const BrandEvent.loadBrands());
  }
}
