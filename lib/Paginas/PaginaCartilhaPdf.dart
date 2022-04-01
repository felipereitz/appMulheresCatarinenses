import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import 'AbriPdf.dart';

class PaginaCartilhaPdf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartilhas Violência Contra A Mulher'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                child: SizedBox(width: 330,
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    itemCount: nomeCartilhas.length,
                    shrinkWrap: true,
                      itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: ()async{
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>AbriPdf((index+1).toString(),nomeCartilhas[index])
                          // ));
                          Directory tempDir = await getTemporaryDirectory();
                          String tempPath = tempDir.path;
                          File tempFile = File('$tempPath/${(index+1).toString()}.pdf');
                          ByteData bd = await rootBundle.load('assets/Pdfs/'+(index+1).toString()+'.pdf');
                          await tempFile.writeAsBytes(bd.buffer.asUint8List(), flush: true);
                          OpenFile.open('$tempPath/${(index+1).toString()}.pdf');
                        },
                          child: Card(
                            color: Colors.purple[100],
                            child: Row(
                              children: [
                                SizedBox(width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(nomeCartilhas[index],style: TextStyle(fontSize: 18),),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset('assets/pdfsImagens/'+(index+1).toString()+'.png'),
                                    ))
                              ],
                            ),
                          )),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  List<String> nomeCartilhas = [
    'Cartilha Violência Contra a Mulher MPSC',
    'Não é Não',
    'Violência Doméstica e Familia',
    'Violência Psicológica',
    'Violência Obstétrica',
    'Violência Sexual e Aborto Legal'
  ];
}
