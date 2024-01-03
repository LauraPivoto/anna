// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'choice.dart';

class ConectionsPage extends StatelessWidget {
  const ConectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.jpeg'),
                    fit: BoxFit.cover)),
            child: Column(children: [
              Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.05,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.15,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(157, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Primeiro, vamos aprender \n a conectar o robô ANNA \n ao seu celular:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: IconButton(
                              icon: Image.asset('assets/sound.png'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.4,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(157, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Para conectar seu celular ao \n Anna, assista o vídeo \n abaixo e siga os mesmos \n passos:',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                icon: Image.asset('assets/sound.png'),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                            style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(3),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            onPressed: () {},
                            child: Text('Assistir ao vídeo.',
                                style: TextStyle(color: Colors.black))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Se já assistiu o vídeo:',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                icon: Image.asset('assets/sound.png'),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(3),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(_choice());
                                },
                                child: Text('Começar a programar.',
                                    style: TextStyle(color: Colors.black))),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
            ])));
  }
}

Route _choice() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        SelecionarDispositivoPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, -1.0);
      const end = Offset.zero;
      const curve = Curves.easeOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
