import 'package:flutter/material.dart';
import 'package:flutter_chart_test/model/pie_section.dart';

class ScreenDialog extends StatefulWidget {
  const ScreenDialog({Key? key}) : super(key: key);

  @override
  State<ScreenDialog> createState() => _ScreenDialogState();
}

class _ScreenDialogState extends State<ScreenDialog> {
  final _formKey = GlobalKey<FormState>();
  String title = "";
  String valor = "";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Agregar Pais', style: TextStyle(fontSize: 20)),
      content: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Titulo',
                  ),
                  onChanged: (String value) {
                    title = value;
                    print(value);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Valor',
                  ),
                  onChanged: (String value) {
                    valor = value;
                    print(value);
                  }),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              final new_section =
                  PieSection(title: title, value: double.parse(valor));
              Navigator.pop(context, new_section);
            }
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
