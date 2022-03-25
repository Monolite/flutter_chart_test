import 'package:flutter/material.dart';
import 'package:flutter_chart_test/model/pie_section.dart';

class ListItem extends StatelessWidget {
  final PieSection lista;
  const ListItem({required this.lista, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(lista.title),
      subtitle: Text('${lista.value}'),
    );
  }
}
