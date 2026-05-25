import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../bloc/brand_bloc.dart';

class BrandListPage extends StatelessWidget {
  const BrandListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BrandBloc>()..add(const BrandEvent.loadBrands()),
      child: Column(
        children: [
          // ── Header ──
          Container(
            padding: const EdgeInsets.fromLTRB(32, 28, 32, 20),
            decoration: const BoxDecoration(
              color: AppTheme.surface,
              border: Border(bottom: BorderSide(color: AppTheme.border)),
            ),
            child: Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Brands',
                      style: GoogleFonts.inter(
                          fontSize: 22, fontWeight: FontWeight.w700, color: AppTheme.textPrimary, letterSpacing: -0.4)),
                  Text('Manage your gym brands',
                      style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 13)),
                ]),
                const Spacer(),
                FilledButton.icon(
                  onPressed: () => context.goNamed(AppRoutes.createBrand),
                  icon: const Icon(Icons.add_rounded, size: 18),
                  label: const Text('New Brand'),
                ),
              ],
            ),
          ),
          // ── Body ──
          Expanded(
            child: BlocConsumer<BrandBloc, BrandState>(
              listener: (context, state) {
                state.maybeWhen(
                  error: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(msg),
                    backgroundColor: AppTheme.error,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  )),
                  orElse: () {},
                );
              },
              builder: (context, state) => state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(child: CircularProgressIndicator()),
                creating: () => const Center(child: CircularProgressIndicator()),
                created: (_) => const Center(child: CircularProgressIndicator()),
                error: (msg) => _ErrorView(
                    msg: msg,
                    onRetry: () => context.read<BrandBloc>().add(const BrandEvent.loadBrands())),
                loaded: (brands) => brands.isEmpty
                    ? _EmptyView(onAdd: () => context.goNamed(AppRoutes.createBrand))
                    : GridView.builder(
                        padding: const EdgeInsets.all(28),
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 340,
                          childAspectRatio: 1.55,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: brands.length,
                        itemBuilder: (_, i) => _BrandCard(brand: brands[i]),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Brand Card ───────────────────────────────────────────────────────────────

class _BrandCard extends StatefulWidget {
  final dynamic brand;
  const _BrandCard({required this.brand});
  @override
  State<_BrandCard> createState() => _BrandCardState();
}

class _BrandCardState extends State<_BrandCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final brand = widget.brand;
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: AppTheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: _hovered ? const Color(0xFF6366F1).withOpacity(0.4) : AppTheme.border),
          boxShadow: _hovered
              ? [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 12, offset: const Offset(0, 4))]
              : [],
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              // Logo or initial avatar
              Container(
                width: 44, height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFEEF2FF),
                  image: brand.logoUrl != null
                      ? DecorationImage(image: NetworkImage(brand.logoUrl!), fit: BoxFit.cover)
                      : null,
                ),
                child: brand.logoUrl == null
                    ? Center(
                        child: Text(brand.name[0].toUpperCase(),
                            style: GoogleFonts.inter(
                                color: const Color(0xFF6366F1), fontSize: 18, fontWeight: FontWeight.w700)))
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(brand.name,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 15, color: AppTheme.textPrimary),
                    overflow: TextOverflow.ellipsis),
              ),
              _StatusBadge(active: brand.isActive),
            ]),
            if (brand.description != null) ...[
              const SizedBox(height: 12),
              Text(brand.description!,
                  style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 12, height: 1.5),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
            ],
            const Spacer(),
            const Divider(height: 1, color: AppTheme.border),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => context.go('${AppRoutes.branches}?brandId=${brand.id}'),
              child: Row(children: [
                const Icon(Icons.location_on_outlined, size: 14, color: Color(0xFF6366F1)),
                const SizedBox(width: 4),
                Text('View Branches',
                    style: GoogleFonts.inter(
                        color: const Color(0xFF6366F1), fontSize: 12, fontWeight: FontWeight.w600)),
                const Spacer(),
                const Icon(Icons.arrow_forward_rounded, size: 14, color: Color(0xFF6366F1)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Helpers ─────────────────────────────────────────────────────────────────

class _StatusBadge extends StatelessWidget {
  final bool active;
  const _StatusBadge({required this.active});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: active ? AppTheme.successLight : const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Container(
            width: 5, height: 5,
            decoration: BoxDecoration(
                color: active ? AppTheme.success : AppTheme.textSecondary, shape: BoxShape.circle)),
        const SizedBox(width: 4),
        Text(active ? 'Active' : 'Inactive',
            style: GoogleFonts.inter(
                color: active ? const Color(0xFF065F46) : AppTheme.textSecondary,
                fontSize: 11,
                fontWeight: FontWeight.w600)),
      ]),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String msg;
  final VoidCallback onRetry;
  const _ErrorView({required this.msg, required this.onRetry});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Icon(Icons.error_outline_rounded, size: 48, color: AppTheme.error),
        const SizedBox(height: 12),
        Text(msg, style: GoogleFonts.inter(color: AppTheme.textSecondary)),
        const SizedBox(height: 16),
        FilledButton(onPressed: onRetry, child: const Text('Retry')),
      ]),
    );
  }
}

class _EmptyView extends StatelessWidget {
  final VoidCallback onAdd;
  const _EmptyView({required this.onAdd});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          width: 72, height: 72,
          decoration: BoxDecoration(color: AppTheme.primaryLight, borderRadius: BorderRadius.circular(20)),
          child: const Icon(Icons.business_rounded, size: 36, color: Color(0xFF6366F1)),
        ),
        const SizedBox(height: 16),
        Text('No brands yet',
            style: GoogleFonts.inter(fontSize: 17, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
        const SizedBox(height: 6),
        Text('Create your first brand to get started.',
            style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 13)),
        const SizedBox(height: 24),
        FilledButton.icon(
          onPressed: onAdd,
          icon: const Icon(Icons.add_rounded, size: 18),
          label: const Text('Create First Brand'),
        ),
      ]),
    );
  }
}
