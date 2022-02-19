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

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color:Colors.red[100],
                    elevation: 3,
                    child: ListTile(
                      title: Text(
                        'Como seria um Mundo Ideal para as Mulheres?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/PaginaComoDeveriaSer');
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 3,
                    child: ListTile(
                      title: Text(
                        'Colaboradores',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/PaginaColaboradores');
                      },
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                ElevatedButton(
                    child: Text('Mostrar Logo da Escola'),
                    onPressed: () {
                      Provider.of<PaginaInicialProvider>(context, listen: false)
                          .logostate = !Provider.of<PaginaInicialProvider>(
                              context,
                              listen: false)
                          .logostate;
                    }),
                SizedBox(
                  height: 30,
                ),
                Provider.of<PaginaInicialProvider>(context, listen: false)
                        .logostate
                    ? Container(
                        width: 200,
                        height: 200,
                        child:
                            Image(image: AssetImage('assets/imagens/logo.png')))
                    : Container()
              ],
            );
          },
        ),
      ),
    );
  }
}
