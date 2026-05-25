import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/di/injection.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://wfjruddjnokftpbrmias.supabase.co',
    anonKey: 'sb_publishable_hbT7NhtzJ40Y6EUXjZsGLA_839wrCCB',
  );

  await configureDependencies();

  runApp(const GymSuperAdminApp());
}

class GymSuperAdminApp extends StatelessWidget {
  const GymSuperAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>().router;
    return MaterialApp.router(
      title: 'FitHub Super Admin',
      theme: AppTheme.light,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
