import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/brand/presentation/pages/brand_list_page.dart';
import '../../features/brand/presentation/pages/create_brand_page.dart';
import '../../features/branch/presentation/pages/branch_list_page.dart';
import '../../features/branch/presentation/pages/create_branch_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../theme/app_theme.dart';

@lazySingleton
class AppRouter {
  GoRouter get router => GoRouter(
        initialLocation: AppRoutes.dashboard,
        redirect: _redirect,
        routes: [
          GoRoute(path: AppRoutes.login, name: AppRoutes.login, builder: (_, __) => const LoginPage()),
          ShellRoute(
            builder: (context, state, child) => AppShell(child: child),
            routes: [
              GoRoute(path: AppRoutes.dashboard, name: AppRoutes.dashboard, builder: (_, __) => const DashboardPage()),
              GoRoute(
                path: AppRoutes.brands,
                name: AppRoutes.brands,
                builder: (_, __) => const BrandListPage(),
                routes: [
                  GoRoute(path: 'create', name: AppRoutes.createBrand, builder: (_, __) => const CreateBrandPage()),
                ],
              ),
              GoRoute(
                path: AppRoutes.branches,
                name: AppRoutes.branches,
                builder: (_, __) => const BranchListPage(),
                routes: [
                  GoRoute(path: 'create', name: AppRoutes.createBranch, builder: (_, __) => const CreateBranchPage()),
                ],
              ),
            ],
          ),
        ],
      );

  String? _redirect(BuildContext context, GoRouterState state) {
    final isLoggedIn = Supabase.instance.client.auth.currentSession != null;
    final isOnLogin = state.matchedLocation == AppRoutes.login;
    if (!isLoggedIn && !isOnLogin) return AppRoutes.login;
    if (isLoggedIn && isOnLogin) return AppRoutes.dashboard;
    return null;
  }
}

class AppRoutes {
  static const login = '/login';
  static const dashboard = '/';
  static const brands = '/brands';
  static const createBrand = 'createBrand';
  static const branches = '/branches';
  static const createBranch = 'createBranch';
}

// ─── Shell ───────────────────────────────────────────────────────────────────

class AppShell extends StatelessWidget {
  final Widget child;
  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Row(
        children: [
          _Sidebar(location: location),
          Expanded(child: child),
        ],
      ),
    );
  }
}

// ─── Sidebar ─────────────────────────────────────────────────────────────────

class _Sidebar extends StatelessWidget {
  final String location;
  const _Sidebar({required this.location});

  @override
  Widget build(BuildContext context) {
    final email = Supabase.instance.client.auth.currentUser?.email ?? '';
    return Container(
      width: 256,
      decoration: const BoxDecoration(
        color: AppTheme.sidebarBg,
        border: Border(right: BorderSide(color: Color(0xFF1E293B))),
      ),
      child: Column(
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 8),
            child: Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.fitness_center_rounded, color: Colors.white, size: 20),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('FitHub',
                        style: GoogleFonts.inter(
                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700, letterSpacing: -0.3)),
                    Text('Super Admin',
                        style: GoogleFonts.inter(color: const Color(0xFF475569), fontSize: 11, fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Divider(color: Color(0xFF1E293B), height: 1, indent: 20, endIndent: 20),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('NAVIGATION',
                  style: GoogleFonts.inter(
                      color: const Color(0xFF334155), fontSize: 10, fontWeight: FontWeight.w700, letterSpacing: 1.2)),
            ),
          ),
          _SidebarItem(icon: Icons.grid_view_rounded, label: 'Dashboard', path: AppRoutes.dashboard,
              active: location == AppRoutes.dashboard),
          _SidebarItem(icon: Icons.business_rounded, label: 'Brands', path: AppRoutes.brands,
              active: location.startsWith('/brands')),
          _SidebarItem(icon: Icons.location_on_rounded, label: 'Branches', path: AppRoutes.branches,
              active: location.startsWith('/branches')),
          const Spacer(),
          // User card
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF0D1526),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFF1E293B)),
            ),
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('A', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Super Admin',
                          style: GoogleFonts.inter(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
                      Text(email,
                          style: GoogleFonts.inter(color: const Color(0xFF475569), fontSize: 10),
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.logout_rounded, size: 16),
                  color: const Color(0xFF475569),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
                  tooltip: 'Sign out',
                  onPressed: () async {
                    await Supabase.instance.client.auth.signOut();
                    if (context.mounted) context.go(AppRoutes.login);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final String path;
  final bool active;
  const _SidebarItem({required this.icon, required this.label, required this.path, required this.active});

  @override
  State<_SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<_SidebarItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => context.go(widget.path),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 120),
            decoration: BoxDecoration(
              color: widget.active
                  ? const Color(0xFF6366F1).withOpacity(0.12)
                  : _hovered
                      ? const Color(0xFF1E293B)
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Icon(widget.icon,
                    size: 18, color: widget.active ? const Color(0xFF818CF8) : const Color(0xFF475569)),
                const SizedBox(width: 12),
                Text(widget.label,
                    style: GoogleFonts.inter(
                      color: widget.active ? Colors.white : const Color(0xFF94A3B8),
                      fontSize: 14,
                      fontWeight: widget.active ? FontWeight.w600 : FontWeight.w500,
                    )),
                if (widget.active) ...[
                  const Spacer(),
                  Container(
                      width: 5,
                      height: 5,
                      decoration: const BoxDecoration(color: Color(0xFF818CF8), shape: BoxShape.circle)),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
