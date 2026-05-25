import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../bloc/branch_bloc.dart';

class BranchListPage extends StatelessWidget {
  const BranchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BranchBloc>()..add(const BranchEvent.loadBranches()),
      child: Column(
        children: [
          // ── Header ──
          Container(
            padding: const EdgeInsets.fromLTRB(32, 28, 32, 20),
            decoration: const BoxDecoration(
              color: AppTheme.surface,
              border: Border(bottom: BorderSide(color: AppTheme.border)),
            ),
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Branches',
                    style: GoogleFonts.inter(
                        fontSize: 22, fontWeight: FontWeight.w700, color: AppTheme.textPrimary, letterSpacing: -0.4)),
                Text('Manage your gym branches',
                    style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 13)),
              ]),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => context.goNamed(AppRoutes.createBranch),
                icon: const Icon(Icons.add_rounded, size: 18),
                label: const Text('New Branch'),
              ),
            ]),
          ),
          // ── Body ──
          Expanded(
            child: BlocConsumer<BranchBloc, BranchState>(
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
                    onRetry: () => context.read<BranchBloc>().add(const BranchEvent.loadBranches())),
                loaded: (branches) => branches.isEmpty
                    ? _EmptyView(onAdd: () => context.goNamed(AppRoutes.createBranch))
                    : ListView.separated(
                        padding: const EdgeInsets.all(28),
                        itemCount: branches.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 12),
                        itemBuilder: (_, i) => _BranchCard(branch: branches[i]),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Branch Card ──────────────────────────────────────────────────────────────

class _BranchCard extends StatefulWidget {
  final dynamic branch;
  const _BranchCard({required this.branch});
  @override
  State<_BranchCard> createState() => _BranchCardState();
}

class _BranchCardState extends State<_BranchCard> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    final b = widget.branch;
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppTheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: _hovered ? const Color(0xFF6366F1).withOpacity(0.4) : AppTheme.border),
          boxShadow: _hovered
              ? [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))]
              : [],
        ),
        child: Row(children: [
          // Logo / avatar
          Container(
            width: 52, height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xFFEFF6FF),
              image: b.logoUrl != null
                  ? DecorationImage(image: NetworkImage(b.logoUrl!), fit: BoxFit.cover)
                  : null,
            ),
            child: b.logoUrl == null
                ? Center(child: Text(b.name[0].toUpperCase(),
                    style: GoogleFonts.inter(
                        color: const Color(0xFF3B82F6), fontSize: 20, fontWeight: FontWeight.w700)))
                : null,
          ),
          const SizedBox(width: 16),
          // Info
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Text(b.name,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 15, color: AppTheme.textPrimary)),
                const SizedBox(width: 8),
                _StatusBadge(active: b.isActive),
              ]),
              const SizedBox(height: 6),
              _InfoRow(icon: Icons.business_outlined, text: b.brandName),
              _InfoRow(icon: Icons.email_outlined, text: b.managerEmail),
              if (b.address != null) _InfoRow(icon: Icons.location_on_outlined, text: b.address!),
              if (b.phone != null) _InfoRow(icon: Icons.phone_outlined, text: b.phone!),
            ]),
          ),
        ]),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _InfoRow({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: Row(children: [
        Icon(icon, size: 13, color: AppTheme.textSecondary),
        const SizedBox(width: 5),
        Text(text, style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 12)),
      ]),
    );
  }
}

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
                fontSize: 11, fontWeight: FontWeight.w600)),
      ]),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String msg;
  final VoidCallback onRetry;
  const _ErrorView({required this.msg, required this.onRetry});
  @override
  Widget build(BuildContext context) => Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Icon(Icons.error_outline_rounded, size: 48, color: AppTheme.error),
          const SizedBox(height: 12),
          Text(msg, style: GoogleFonts.inter(color: AppTheme.textSecondary)),
          const SizedBox(height: 16),
          FilledButton(onPressed: onRetry, child: const Text('Retry')),
        ]),
      );
}

class _EmptyView extends StatelessWidget {
  final VoidCallback onAdd;
  const _EmptyView({required this.onAdd});
  @override
  Widget build(BuildContext context) => Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            width: 72, height: 72,
            decoration: BoxDecoration(color: const Color(0xFFEFF6FF), borderRadius: BorderRadius.circular(20)),
            child: const Icon(Icons.location_on_rounded, size: 36, color: Color(0xFF3B82F6)),
          ),
          const SizedBox(height: 16),
          Text('No branches yet',
              style: GoogleFonts.inter(fontSize: 17, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
          const SizedBox(height: 6),
          Text('Create your first branch to get started.',
              style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 13)),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: onAdd,
            icon: const Icon(Icons.add_rounded, size: 18),
            label: const Text('Create First Branch'),
          ),
        ]),
      );
}
