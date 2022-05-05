import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_splash_page.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const AppSplashPage(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          '/home',
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        WildcardRoute(
          child: (_, __) => const Scaffold(
            body: Center(
              child: Text('Pagina não encontrada'),
            ),
          ),
        )
      ];
}
