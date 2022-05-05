// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BodyComponent extends StatelessWidget {
  Widget child;

  BodyComponent({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: child),
        );
      },
    );
  }
}
