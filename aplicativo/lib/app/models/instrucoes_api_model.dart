import 'dart:convert';

class InstrucoesApiModel {
  String title;
  Map<String, bool> actions;
  InstrucoesApiModel({
    required this.title,
    required this.actions,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'actions': actions,
    };
  }

  factory InstrucoesApiModel.fromMap(Map<String, dynamic> map) {
    return InstrucoesApiModel(
      title: map['title'] ?? '',
      actions: Map<String, bool>.from(map['actions']),
    );
  }

  String toJson() => json.encode(toMap());

  factory InstrucoesApiModel.fromJson(String source) =>
      InstrucoesApiModel.fromMap(json.decode(source));
}
