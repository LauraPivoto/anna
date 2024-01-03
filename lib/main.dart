// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anna/initial_page.dart';
import 'package:anna/instructions.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'choice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AssetsAudioPlayer _assetsAudioPlayer;

  @override
  void initState() {
    super.initState();
    _assetsAudioPlayer = AssetsAudioPlayer();
    _loadAudio();
  }

  void _loadAudio() async {
    try {
      await _assetsAudioPlayer.open(
        Audio("assets/music/music.mp3"),
        showNotification: true,
        autoStart: true,
      );
      print("Áudio carregado com sucesso");
    } catch (t) {
      print("Erro ao carregar áudio: $t");
    }
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => InitialPage(),
        '/Instruções': (context) => InstructionsPage(),
        '/selectDevice': (context) => SelecionarDispositivoPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    );
  }
}
