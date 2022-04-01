import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AbriPdf extends StatelessWidget {
  final String nomeArquivo;
  final String nomeCartilha;
  AbriPdf(this.nomeArquivo, this.nomeCartilha);


  @override
  Widget build(BuildContext context) {
    // final pdfController = PdfController(
    //   document: PdfDocument.openAsset('assets/Pdfs/'+nomeArquivo+'.pdf'),
    // );

    return Scaffold(
      appBar: AppBar(title: Text(nomeCartilha),),
      body: Center(
          child: SfPdfViewer.asset(
              'assets/Pdfs/'+nomeArquivo+'.pdf'
          )
      ),
    );
  }
}
