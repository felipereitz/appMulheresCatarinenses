import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mulherescatarinenses/Paginas/PaginaColaboradores.dart';
import 'package:mulherescatarinenses/Paginas/PaginaInicial.dart';

import 'Funcoes/Inicializacao/ListaDeProviders.dart';
import 'Funcoes/Inicializacao/hiveInicialization.dart';
import 'Paginas/LinhaDoTempo.dart';
import 'Paginas/PaginaCartilhaPdf.dart';
import 'Paginas/PaginaComoDeveriaSer.dart';
import 'Paginas/PaginaDadosViolencia.dart';
import 'Paginas/PaginaResultadoEntrevistas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //MobileAds.instance.initialize();
  await hiveInicialization();
  // AdsHelper.createInterstitialAd();
  // AdsHelper.carregaBannerAds();

  runApp(retornaListaProviders());
}

class Meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MULHERES NO TERRITÓRIO CATARINENSE',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.white,
          secondaryHeaderColor: Colors.grey[300],
          cardColor: Colors.white70, // cor dos botões
          shadowColor: Colors.yellow[100],
           //contorno botões
      ),
      routes: {
        '/PaginaInicial': (context) => PaginaInicial(),
        '/PaginaColaboradores': (context)=> PaginaColaboradores(),
        '/PaginaComoDeveriaSer': (context)=>PaginaComoDeveriaSer(),
        '/PaginaDadosViolencia': (context)=>PaginaDadosViolencia(),
        '/PaginaResultadoEntrevistas': (context)=>PaginaResultadoEntrevistas(),
        '/PaginaCartilhaPdf': (context)=> PaginaCartilhaPdf(),
        '/LinhaDoTempo': (context)=> LinhaDoTempo()

        //LinhaDoTempo

      },
      initialRoute: '/PaginaInicial',
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('pt', 'BR')],
    );
  }
}
