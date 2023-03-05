import 'package:auto_route/auto_route.dart';
import 'package:brainstormer_app/common/providers/navigation_providers.dart';
import 'package:brainstormer_app/flow/splash/splash_screen.dart';
import 'package:brainstormer_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        router,
        placeholder: (context) => const SplashScreen(),
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: router.defaultRouteParser(),
      title: 'Brainstormer',
      localizationsDelegates: const [Translations.delegate],
      supportedLocales: Translations.delegate.supportedLocales,
      onGenerateTitle: (context) => Translations.of(context).appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
