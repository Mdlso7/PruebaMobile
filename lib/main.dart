import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: PantallaPrincipal()));
class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State <PantallaPrincipal> createState() => _PantallaPrincipalState();
}
class _PantallaPrincipalState extends State<PantallaPrincipal> {
final controller = TextEditingController();
List <String> lista = [];
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar( title: const Text ("Lista"),
    body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column( children: [
            TextField(controller: controller),
              ElevatedButton(
                onPressed: () {
                  if (controller.text.isEmpty) return;
                  setState(() => lista.add(controller.text));
                  controller.clear();},
                  child: const Text("Agregar")),
       
        Expanded(
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(lista[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => setState(() => lista.removeAt(index)),
            ),
          ),      
        ),
      ),
      ]),
  ),
    ),
  );
}
}
