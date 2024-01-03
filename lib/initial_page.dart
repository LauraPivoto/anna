// ignore_for_file: prefer_const_constructors

import 'package:anna/conection_page.dart';
import 'package:flutter/material.dart';
import 'instructions.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpeg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/robot.png'))),
              ),
            ),
            Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(157, 255, 255, 255),
                    borderRadius: BorderRadius.circular(
                        15.0), // Ajuste o valor conforme necessário
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            const Text(
                              'Seja bem-vindo ao seu \n aplicativo do robô ANNA!',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 10,
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 8),
                        child: Center(
                            child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(_play());
                              },
                              style: TextButton.styleFrom(
                                elevation: 3,
                                minimumSize: Size(180, 55),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.all(16.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              child: Text(
                                'Quero brincar!',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                icon: Image.asset('assets/sound.png'),
                                onPressed: () {
                                  // Adicione o código que será executado ao pressionar o botão aqui
                                },
                              ),
                            ),
                          ],
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 8),
                        child: Center(
                            child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(_instructions());
                              },
                              style: TextButton.styleFrom(
                                elevation: 3,
                                minimumSize: Size(150, 55),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.all(16.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              child: Text(
                                'Não sei como usar o robô.',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        )),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Route _instructions() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const InstructionsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _play() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const ConectionsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
