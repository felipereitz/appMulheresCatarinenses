import 'package:flutter/material.dart';
import 'package:mulherescatarinenses/ProviderModels/PaginaInicialProvider.dart';
import 'package:mulherescatarinenses/main.dart';
import 'package:provider/provider.dart';

retornaListaProviders( ){
  return MultiProvider(
      providers: [ChangeNotifierProvider(
      create: (BuildContext context) => PaginaInicialProvider())],
  child: Meuapp());}