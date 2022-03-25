import 'package:flutter/material.dart';
import 'package:flutter_chart_test/model/pie_section.dart';
import 'package:flutter_chart_test/screen_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final sections = <PieSection>[];

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
              child: ListView.builder(
                  itemCount: sections.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.green,
                    );
                  }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newSection = await showDialog<PieSection>(
              context: context,
              builder: (ctx) {
                return const ScreenDialog();
              });

          if (newSection != null) {
            setState(() {
              sections.add(newSection);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
