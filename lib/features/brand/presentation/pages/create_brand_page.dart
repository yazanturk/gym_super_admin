import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../bloc/brand_bloc.dart';

class CreateBrandPage extends StatefulWidget {
  const CreateBrandPage({super.key});

  @override
  State<CreateBrandPage> createState() => _CreateBrandPageState();
}

class _CreateBrandPageState extends State<CreateBrandPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  Uint8List? _logoBytes;
  String? _logoExt;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickLogo() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image, withData: true);
    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _logoBytes = result.files.first.bytes;
        _logoExt = result.files.first.extension;
      });
    }
  }

  Future<String?> _uploadLogo() async {
    if (_logoBytes == null) return null;
    final ext = _logoExt ?? 'jpg';
    final fileName = 'brands/${DateTime.now().millisecondsSinceEpoch}.$ext';
    await Supabase.instance.client.storage.from('logos').uploadBinary(fileName, _logoBytes!);
    return Supabase.instance.client.storage.from('logos').getPublicUrl(fileName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BrandBloc>(),
      child: BlocConsumer<BrandBloc, BrandState>(
        listener: (context, state) {
          state.maybeWhen(
            created: (_) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Brand created successfully'),
                backgroundColor: AppTheme.success,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ));
              context.goNamed(AppRoutes.brands);
            },
            error: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(msg),
              backgroundColor: AppTheme.error,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            )),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(creating: () => true, orElse: () => false);
          return Column(
            children: [
              // ── Page header ──
              Container(
                padding: const EdgeInsets.fromLTRB(32, 24, 32, 20),
                decoration: const BoxDecoration(
                  color: AppTheme.surface,
                  border: Border(bottom: BorderSide(color: AppTheme.border)),
                ),
                child: Row(children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_rounded),
                    onPressed: () => context.pop(),
                    style: IconButton.styleFrom(
                        backgroundColor: const Color(0xFFF1F5F9),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  ),
                  const SizedBox(width: 16),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('Create Brand',
                        style: GoogleFonts.inter(
                            fontSize: 20, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                    Text('Add a new gym brand to your network',
                        style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 13)),
                  ]),
                ]),
              ),
              // ── Form ──
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(32),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 560),
                      child: Form(
                        key: _formKey,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                          // Logo section
                          _FormCard(
                            title: 'Brand Logo',
                            subtitle: 'Upload a logo for this brand (optional)',
                            child: Row(children: [
                              GestureDetector(
                                onTap: _pickLogo,
                                child: Container(
                                  width: 88, height: 88,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF8FAFC),
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                        color: _logoBytes != null
                                            ? AppTheme.primary
                                            : AppTheme.border,
                                        width: _logoBytes != null ? 2 : 1),
                                    image: _logoBytes != null
                                        ? DecorationImage(image: MemoryImage(_logoBytes!), fit: BoxFit.cover)
                                        : null,
                                  ),
                                  child: _logoBytes == null
                                      ? Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                          const Icon(Icons.add_photo_alternate_rounded,
                                              color: Color(0xFF94A3B8), size: 26),
                                          const SizedBox(height: 4),
                                          Text('Logo',
                                              style: GoogleFonts.inter(
                                                  color: const Color(0xFF94A3B8), fontSize: 11)),
                                        ])
                                      : null,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  OutlinedButton.icon(
                                    onPressed: _pickLogo,
                                    icon: const Icon(Icons.upload_rounded, size: 16),
                                    label: Text(_logoBytes != null ? 'Change Logo' : 'Upload Logo'),
                                  ),
                                  const SizedBox(height: 6),
                                  Text('PNG, JPG, WebP — up to 5 MB',
                                      style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 11)),
                                ]),
                              ),
                            ]),
                          ),
                          const SizedBox(height: 16),
                          // Details section
                          _FormCard(
                            title: 'Brand Details',
                            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                              _FieldLabel('Brand Name *'),
                              const SizedBox(height: 6),
                              TextFormField(
                                controller: _nameCtrl,
                                decoration: const InputDecoration(hintText: 'e.g. FitHub Premium'),
                                validator: (v) => v == null || v.trim().isEmpty ? 'Required' : null,
                              ),
                              const SizedBox(height: 16),
                              _FieldLabel('Description'),
                              const SizedBox(height: 6),
                              TextFormField(
                                controller: _descCtrl,
                                decoration: const InputDecoration(hintText: 'Brief description of this brand'),
                                maxLines: 3,
                              ),
                            ]),
                          ),
                          const SizedBox(height: 24),
                          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                            OutlinedButton(
                              onPressed: isLoading ? null : () => context.pop(),
                              child: const Text('Cancel'),
                            ),
                            const SizedBox(width: 12),
                            FilledButton(
                              onPressed: isLoading ? null : () => _submit(context),
                              child: isLoading
                                  ? const SizedBox(width: 18, height: 18,
                                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                                  : const Text('Create Brand'),
                            ),
                          ]),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _submit(BuildContext ctx) async {
    if (!_formKey.currentState!.validate()) return;
    final logoUrl = await _uploadLogo();
    if (!ctx.mounted) return;
    ctx.read<BrandBloc>().add(BrandEvent.createBrand(
      name: _nameCtrl.text.trim(),
      description: _descCtrl.text.trim().isEmpty ? null : _descCtrl.text.trim(),
      logoUrl: logoUrl,
    ));
  }
}

// ─── Shared form widgets ──────────────────────────────────────────────────────

class _FormCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget child;
  const _FormCard({required this.title, this.subtitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.border),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title,
            style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
        if (subtitle != null) ...[
          const SizedBox(height: 2),
          Text(subtitle!, style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 12)),
        ],
        const SizedBox(height: 20),
        child,
      ]),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  final String text;
  const _FieldLabel(this.text);
  @override
  Widget build(BuildContext context) => Text(text,
      style: GoogleFonts.inter(color: const Color(0xFF374151), fontSize: 13, fontWeight: FontWeight.w600));
}
