import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/exceptions.dart';
import '../models/brand_model.dart';

abstract class BrandRemoteDataSource {
  Future<List<BrandModel>> getBrands();
  Future<BrandModel> createBrand({required String name, String? description, String? logoUrl});
  Future<BrandModel> updateBrand(BrandModel brand);
  Future<void> deleteBrand(String id);
}

@LazySingleton(as: BrandRemoteDataSource)
class BrandRemoteDataSourceImpl implements BrandRemoteDataSource {
  final SupabaseClient _client;
  const BrandRemoteDataSourceImpl(this._client);

  @override
  Future<List<BrandModel>> getBrands() async {
    try {
      final data = await _client.from('brands').select().order('created_at', ascending: false);
      return (data as List).map((e) => BrandModel.fromJson(e)).toList();
    } catch (e) {
      log('Error fetching brands: $e');
      throw ServerException(e.toString());
    }
  }

  @override
  Future<BrandModel> createBrand({required String name, String? description, String? logoUrl}) async {
    try {
      final data = await _client
          .from('brands')
          .insert({'name': name, 'description': description, 'logo_url': logoUrl, 'is_active': true})
          .select()
          .single();
      return BrandModel.fromJson(data);
    } catch (e) {
      log('Error creating brand: $e');
      throw ServerException(e.toString());
    }
  }

  @override
  Future<BrandModel> updateBrand(BrandModel brand) async {
    try {
      final data = await _client.from('brands').update(brand.toJson()).eq('id', brand.id).select().single();
      return BrandModel.fromJson(data);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> deleteBrand(String id) async {
    try {
      await _client.from('brands').delete().eq('id', id);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
