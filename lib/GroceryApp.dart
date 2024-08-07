// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Project imports:
import 'package:grocery_app/core/extensions/context_extensions.dart';
import 'package:grocery_app/core/theme/domain/theme_bloc.dart';
import 'core/theme/data/theme_provider.dart';
import 'features/main/main_screen.dart';
import 'generated/l10n.dart';
import 'injection.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ThemeBloc>()..add(const ThemeEvent.started()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (_, state) => state.when(
          init: () => const SizedBox(),
          ready: (state) => ThemeProvider(
            isDarkTheme: state.isSystem ? context.brightness == Brightness.dark : state.isDark,
            child: const _GroceryApp(),
          ),
        ),
      ),
    );
  }
}

class _GroceryApp extends StatelessWidget {
  const _GroceryApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TranspoApp',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeProvider.of(context)!.themeData(),
      darkTheme: ThemeProvider.of(context)!.themeData(),
      themeMode: ThemeMode.light,
      home: const MainScreen(),
    );
  }
}
