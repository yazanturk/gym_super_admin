import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_theme.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Header(),
          const SizedBox(height: 32),
          _StatsRow(),
          const SizedBox(height: 32),
          _QuickActions(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final h = DateTime.now().hour;
    final greeting = h < 12 ? 'Good morning' : h < 17 ? 'Good afternoon' : 'Good evening';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$greeting, Admin 👋',
            style: GoogleFonts.inter(
                fontSize: 26, fontWeight: FontWeight.w700, color: AppTheme.textPrimary, letterSpacing: -0.5)),
        const SizedBox(height: 4),
        Text("Here's an overview of your gym network.",
            style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 15)),
      ],
    );
  }
}

class _StatsRow extends StatelessWidget {
  Future<Map<String, int>> _fetch() async {
    final c = Supabase.instance.client;
    final r = await Future.wait([
      c.from('brands').select('id'),
      c.from('branches').select('id'),
      c.from('branch_managers').select('id'),
    ]);
    return {
      'brands': (r[0] as List).length,
      'branches': (r[1] as List).length,
      'managers': (r[2] as List).length,
    };
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, int>>(
      future: _fetch(),
      builder: (context, snap) {
        final d = snap.data ?? {'brands': 0, 'branches': 0, 'managers': 0};
        return Wrap(spacing: 16, runSpacing: 16, children: [
          _StatCard(label: 'Total Brands', value: '${d['brands']}',
              icon: Icons.business_rounded, color: const Color(0xFF6366F1), bg: const Color(0xFFEEF2FF)),
          _StatCard(label: 'Total Branches', value: '${d['branches']}',
              icon: Icons.location_on_rounded, color: const Color(0xFF10B981), bg: const Color(0xFFECFDF5)),
          _StatCard(label: 'Branch Managers', value: '${d['managers']}',
              icon: Icons.people_rounded, color: const Color(0xFFF59E0B), bg: const Color(0xFFFFFBEB)),
        ]);
      },
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label, value;
  final IconData icon;
  final Color color, bg;
  const _StatCard({required this.label, required this.value, required this.icon, required this.color, required this.bg});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.border),
      ),
      child: Row(children: [
        Container(
          width: 48, height: 48,
          decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(12)),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(width: 16),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(value,
              style: GoogleFonts.inter(
                  fontSize: 28, fontWeight: FontWeight.w700, color: AppTheme.textPrimary, letterSpacing: -0.5)),
          Text(label,
              style: GoogleFonts.inter(color: AppTheme.textSecondary, fontSize: 12, fontWeight: FontWeight.w500)),
        ]),
      ]),
    );
  }
}

class _QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Quick Actions',
            style: GoogleFonts.inter(fontSize: 17, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
        const SizedBox(height: 16),
        Wrap(spacing: 16, runSpacing: 16, children: [
          _ActionCard(
            gradient: const [Color(0xFF6366F1), Color(0xFF8B5CF6)],
            icon: Icons.add_business_rounded,
            title: 'New Brand',
            subtitle: 'Add a gym brand to your network',
            onTap: () => context.goNamed(AppRoutes.createBrand),
          ),
          _ActionCard(
            gradient: const [Color(0xFF10B981), Color(0xFF059669)],
            icon: Icons.add_location_alt_rounded,
            title: 'New Branch',
            subtitle: 'Create a branch & set up manager',
            onTap: () => context.goNamed(AppRoutes.createBranch),
          ),
        ]),
      ],
    );
  }
}

class _ActionCard extends StatefulWidget {
  final List<Color> gradient;
  final IconData icon;
  final String title, subtitle;
  final VoidCallback onTap;
  const _ActionCard({required this.gradient, required this.icon, required this.title, required this.subtitle, required this.onTap});

  @override
  State<_ActionCard> createState() => _ActionCardState();
}

class _ActionCardState extends State<_ActionCard> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 260,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: widget.gradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(16),
            boxShadow: _hovered
                ? [BoxShadow(color: widget.gradient.first.withOpacity(0.3), blurRadius: 20, offset: const Offset(0, 8))]
                : [],
          ),
          child: Row(children: [
            Container(
              width: 48, height: 48,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
              child: Icon(widget.icon, color: Colors.white, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(widget.title,
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(widget.subtitle,
                    style: GoogleFonts.inter(color: Colors.white.withOpacity(0.7), fontSize: 12)),
              ]),
            ),
            Icon(Icons.arrow_forward_rounded, color: Colors.white.withOpacity(0.7), size: 18),
          ]),
        ),
      ),
    );
  }
}
