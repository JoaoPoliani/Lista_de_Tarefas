import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Tarefas',

      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),

      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  List<String> tarefas = [];

  List<bool> concluida = [];

  TextEditingController controller = TextEditingController();

  void adicionarTarefa() {

    if (controller.text.isNotEmpty) {

      setState(() {
        tarefas.add(controller.text);
        concluida.add(false);
        controller.clear();
      });

    }
  }

  void removerTarefa(int index) {

    setState(() {
      tarefas.removeAt(index);
      concluida.removeAt(index);
    });

  }

  void marcarTarefa(int index) {

    setState(() {
      concluida[index] = !concluida[index];
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Minhas Tarefas'),
        backgroundColor: Colors.deepOrange,
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(16),

            child: Row(
              children: [

                Expanded(
                  child: TextField(
                    controller: controller,

                    decoration: const InputDecoration(
                      hintText: 'Digite uma tarefa',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: adicionarTarefa,

                  child: const Icon(Icons.add),
                ),

              ],
            ),
          ),

          Expanded(
            child: ListView.builder(

              itemCount: tarefas.length,

              itemBuilder: (context, index) {

                return ListTile(

                  leading: Checkbox(
                    value: concluida[index],

                    onChanged: (valor) {
                      marcarTarefa(index);
                    },
                  ),

                  title: Text(
                    tarefas[index],

                    style: TextStyle(
                      fontSize: 18,

                      decoration: concluida[index]
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),

                  trailing: IconButton(
                    icon: const Icon(Icons.delete),

                    onPressed: () {
                      removerTarefa(index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
