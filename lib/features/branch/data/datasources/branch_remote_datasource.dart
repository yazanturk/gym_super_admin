import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/exceptions.dart';
import '../models/branch_model.dart';

abstract class BranchRemoteDataSource {
  Future<List<BranchModel>> getBranches({String? brandId});
  Future<BranchModel> createBranch({
    required String brandId,
    required String name,
    required String managerEmail,
    required String managerPassword,
    String? address,
    String? phone,
    String? logoUrl,
  });
  Future<void> deleteBranch(String id);
}

@LazySingleton(as: BranchRemoteDataSource)
class BranchRemoteDataSourceImpl implements BranchRemoteDataSource {
  final SupabaseClient _client;
  const BranchRemoteDataSourceImpl(this._client);

  @override
  Future<List<BranchModel>> getBranches({String? brandId}) async {
    try {
      List<dynamic> data;
      if (brandId != null) {
        data = await _client
            .from('branches')
            .select('*, brands(name)')
            .eq('brand_id', brandId)
            .order('created_at', ascending: false);
      } else {
        data = await _client.from('branches').select('*, brands(name)').order('created_at', ascending: false);
      }
      return data.map((e) {
        final row = Map<String, dynamic>.from(e as Map);
        final brands = row['brands'] as Map?;
        row['brand_name'] = brands != null ? (brands['name'] ?? '') : '';
        return BranchModel.fromJson(row);
      }).toList();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<BranchModel> createBranch({
    required String brandId,
    required String name,
    required String managerEmail,
    required String managerPassword,
    String? address,
    String? phone,
    String? logoUrl,
  }) async {
    try {
      // 1. Create auth user for branch manager via admin API (edge function or service role)
      final authResponse = await _client.functions.invoke(
        'create-branch-manager',
        body: {'email': managerEmail, 'password': managerPassword, 'brand_id': brandId, 'branch_name': name},
      );

      if (authResponse.status != 200) {
        throw ServerException('Failed to create manager account');
      }

      final managerId = authResponse.data['user_id'] as String;

      // 2. Create branch record
      final data = await _client
          .from('branches')
          .insert({
            'brand_id': brandId,
            'name': name,
            'address': address,
            'phone': phone,
            'logo_url': logoUrl,
            'manager_email': managerEmail,
            'manager_id': managerId,
            'is_active': true,
          })
          .select('*, brands(name)')
          .single();

      final row = Map<String, dynamic>.from(data);
      final brands = row['brands'] as Map?;
      row['brand_name'] = brands != null ? (brands['name'] ?? '') : '';
      return BranchModel.fromJson(row);
    } catch (e) {
      log('Error creating branch: $e');
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> deleteBranch(String id) async {
    try {
      await _client.from('branches').delete().eq('id', id);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
