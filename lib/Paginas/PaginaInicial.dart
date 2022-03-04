import 'package:flutter/material.dart';
import 'package:mulherescatarinenses/ProviderModels/PaginaInicialProvider.dart';
import 'package:provider/provider.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mulheres no Território Catarinense'),
      ),
      body: SingleChildScrollView(
        child: Consumer<PaginaInicialProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),

                itemListaPaginas(context,
                    'Dados violência contra mulher em SC',
                    (Colors.greenAccent[100])!,
                    '/PaginaDadosViolencia'),

                itemListaPaginas(context,
                    'Resultado pesquisa com mulheres catarinenses',
                    (Colors.red[100])!,
                    '/PaginaResultadoEntrevistas'),

                itemListaPaginas(context,
                    'Como seria um Mundo Ideal para as Mulheres?',
                    (Colors.blue[100])!,
                    '/PaginaComoDeveriaSer'),

                itemListaPaginas(context,
                    'Colaboradores',
                    (Colors.orangeAccent[100])!,
                    '/PaginaColaboradores'),


              ],
            );
          },
        ),
      ),
    );
  }

  Padding itemListaPaginas(BuildContext context, String titulo, Color cor, String pagina) {
    return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color:cor,
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      titulo,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, pagina);
                    },
                  ),
                ),
              );
  }


}
