import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'appbar_store.dart';

class AppBarComponent extends StatefulWidget implements PreferredSizeWidget {
  String title;
  List<Widget>? actions;

  AppBarComponent({
    Key? key,
    this.title = 'vitruum',
    this.actions,
  }) : super(key: key);

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();

  @override
  Size get preferredSize => const Size.fromHeight(45);
}

class _AppBarComponentState extends ModularState<AppBarComponent, AppBarStore> {
  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('qwd'));
  }
}
