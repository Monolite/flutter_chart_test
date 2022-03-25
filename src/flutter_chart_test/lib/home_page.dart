import 'package:flutter/material.dart';
import 'package:flutter_chart_test/model/pie_section.dart';
import 'package:flutter_chart_test/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final sections = <PieSection>[];

  buildList() {
    return <PieSection>[
      PieSection(title: 'titulo 1', value: 10.0),
      PieSection(title: 'titulo 2', value: 20.0),
      PieSection(title: 'titulo 3', value: 30.0),
      PieSection(title: 'titulo 4', value: 40.0),
    ];
  }

  List<ListItem> builLista() {
    return buildList()
        .map<ListItem>((list) => ListItem(
              lista: list,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chart Test'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          Expanded(
              child: ListView(
            children: builLista(),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
