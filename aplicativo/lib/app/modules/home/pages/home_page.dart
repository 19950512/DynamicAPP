import 'package:aplicativo/app/models/instrucoes_api_model.dart';
import 'package:aplicativo/app/shared/components/appbar_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> respostaAPI = {
    "title": "Allow World!",
    "actions": {"refresh": true}
  };
  late final InstrucoesApiModel instrucoes;

  @override
  void initState() {
    super.initState();
    instrucoes = InstrucoesApiModel.fromMap(respostaAPI);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
