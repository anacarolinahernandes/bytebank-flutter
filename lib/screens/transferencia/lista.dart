import 'package:bytebank/components/transferencia.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Transferências';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    // Não é mais possível deixar transferências prévias pois, a cada
    // renderização, ele vai adicioná-las também
    // widget._transferencias.add(Transferencia(100.0, 1000));

    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, index) {
          final transferencia = widget._transferencias[index];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return FormularioTransferencia();
            })).then((transferenciaRecebida) =>
                _atualiza(transferenciaRecebida, context));
          },
        ),
      ),
    );
  }

  void _atualiza(Transferencia transferenciaRecebida, BuildContext context) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Transferência realizada com sucesso!'),
        ),
      );
    }
  }
}
