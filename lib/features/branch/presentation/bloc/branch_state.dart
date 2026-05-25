part of 'branch_bloc.dart';

@freezed
class BranchState with _$BranchState {
  const factory BranchState.initial() = _Initial;
  const factory BranchState.loading() = _Loading;
  const factory BranchState.loaded(List<Branch> branches) = _Loaded;
  const factory BranchState.creating() = _Creating;
  const factory BranchState.created(Branch branch) = _Created;
  const factory BranchState.error(String message) = _Error;
}
