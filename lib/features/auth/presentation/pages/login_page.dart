import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscure = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (_) => context.go(AppRoutes.dashboard),
            error: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(msg),
              backgroundColor: const Color(0xFFEF4444),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            )),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);
          return Scaffold(
            body: Row(
              children: [
                // ── Left branding panel ──
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF0F172A), Color(0xFF1E1B4B)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            top: -80, right: -80,
                            child: Container(width: 260, height: 260,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF6366F1).withOpacity(0.08)))),
                        Positioned(
                            bottom: 60, left: -50,
                            child: Container(width: 200, height: 200,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF8B5CF6).withOpacity(0.07)))),
                        Padding(
                          padding: const EdgeInsets.all(48),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Container(
                                  width: 44, height: 44,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(Icons.fitness_center_rounded, color: Colors.white, size: 22),
                                ),
                                const SizedBox(width: 12),
                                Text('FitHub',
                                    style: GoogleFonts.inter(
                                        color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700)),
                              ]),
                              const Spacer(),
                              Text('Your Gym\nEmpire,\nManaged.',
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 42,
                                      fontWeight: FontWeight.w800,
                                      height: 1.1,
                                      letterSpacing: -1.5)),
                              const SizedBox(height: 20),
                              Text('Control your entire gym network\nfrom one powerful dashboard.',
                                  style: GoogleFonts.inter(
                                      color: const Color(0xFF64748B), fontSize: 15, height: 1.6)),
                              const SizedBox(height: 40),
                              Wrap(spacing: 8, runSpacing: 8, children: const [
                                _Chip(icon: Icons.business_rounded, label: 'Multi-Brand'),
                                _Chip(icon: Icons.location_on_rounded, label: 'Multi-Branch'),
                                _Chip(icon: Icons.people_rounded, label: 'Manager Accounts'),
                              ]),
                              const SizedBox(height: 48),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ── Right form panel ──
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 400),
                        child: Padding(
                          padding: const EdgeInsets.all(40),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text('Welcome back',
                                    style: GoogleFonts.inter(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xFF0F172A),
                                        letterSpacing: -0.5)),
                                const SizedBox(height: 6),
                                Text('Sign in to your admin account',
                                    style: GoogleFonts.inter(color: const Color(0xFF64748B), fontSize: 15)),
                                const SizedBox(height: 36),
                                _Label('Email address'),
                                const SizedBox(height: 6),
                                TextFormField(
                                  controller: _emailCtrl,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(hintText: 'admin@fithub.com'),
                                  validator: (v) => v == null || !v.contains('@') ? 'Enter a valid email' : null,
                                ),
                                const SizedBox(height: 20),
                                _Label('Password'),
                                const SizedBox(height: 6),
                                TextFormField(
                                  controller: _passwordCtrl,
                                  obscureText: _obscure,
                                  decoration: InputDecoration(
                                    hintText: '••••••••',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                          _obscure ? Icons.visibility_off_rounded : Icons.visibility_rounded,
                                          color: const Color(0xFF94A3B8),
                                          size: 18),
                                      onPressed: () => setState(() => _obscure = !_obscure),
                                    ),
                                  ),
                                  validator: (v) => v == null || v.length < 6 ? 'Min 6 characters' : null,
                                ),
                                const SizedBox(height: 28),
                                SizedBox(
                                  height: 48,
                                  child: ElevatedButton(
                                    onPressed: isLoading ? null : () => _submit(context),
                                    child: isLoading
                                        ? const SizedBox(width: 20, height: 20,
                                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                                        : Text('Sign In',
                                            style: GoogleFonts.inter(
                                                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    context.read<AuthBloc>().add(AuthEvent.signIn(
      email: _emailCtrl.text.trim(),
      password: _passwordCtrl.text,
    ));
  }
}

class _Label extends StatelessWidget {
  final String text;
  const _Label(this.text);
  @override
  Widget build(BuildContext context) => Text(text,
      style: GoogleFonts.inter(color: const Color(0xFF374151), fontSize: 13, fontWeight: FontWeight.w600));
}

class _Chip extends StatelessWidget {
  final IconData icon;
  final String label;
  const _Chip({required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF334155)),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(icon, size: 13, color: const Color(0xFF818CF8)),
        const SizedBox(width: 6),
        Text(label,
            style: GoogleFonts.inter(color: const Color(0xFF94A3B8), fontSize: 12, fontWeight: FontWeight.w500)),
      ]),
    );
  }
}
