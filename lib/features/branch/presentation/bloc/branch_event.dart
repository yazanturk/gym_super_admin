part of 'branch_bloc.dart';

@freezed
class BranchEvent with _$BranchEvent {
  const factory BranchEvent.loadBranches({String? brandId}) = _LoadBranches;
  const factory BranchEvent.createBranch({
    required String brandId,
    required String name,
    required String managerEmail,
    required String managerPassword,
    String? address,
    String? phone,
    String? logoUrl,
  }) = _CreateBranch;
  const factory BranchEvent.deleteBranch(String id) = _DeleteBranch;
}
