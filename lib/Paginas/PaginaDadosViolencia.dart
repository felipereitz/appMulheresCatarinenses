import 'package:flutter/material.dart';

class PaginaDadosViolencia extends StatelessWidget {
  const PaginaDadosViolencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados Violência Contra Mulher SC'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/1.png'))),
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/2.png'))),
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/3.png'))),
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/4.png'))),
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/5.png'))),
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/6.png'))),
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/7.png'))),
            SizedBox(
              height: 20,
            ),
            InteractiveViewer(child: Image(image: AssetImage('assets/Dados/8.png'))),




          ]),
        ),
      ),
    );
  }
}
