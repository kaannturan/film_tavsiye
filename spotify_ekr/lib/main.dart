import "dart:math";
import "package:flutter/material.dart";
import "package:spotify_ekr/button.dart";
import "package:spotify_ekr/text_sayfasi.dart";

void main() {
  runApp(FilmTavsiye());
}

class FilmTavsiye extends StatefulWidget {
  FilmTavsiye({super.key});

  @override
  State<FilmTavsiye> createState() => FilmTavsiyeState();
}

List<Film> filmBankasi = [
  Film(filmAdi: "RASTGELE FİLM TAVSİYESİ"),
  Film(filmAdi: "Karanlıktan Gelen"),
  Film(filmAdi: "Separation"),
  Film(filmAdi: "Şeytan Kapanı"),
  Film(filmAdi: "Veba"),
  Film(filmAdi: "Tuhaf Ev"),
  Film(filmAdi: "Watcher"),
  Film(filmAdi: "Konferans"),
];

int filmIndex = 0;

class Film {
  String filmAdi;

  Film({required this.filmAdi});
}

class FilmTavsiyeState extends State<FilmTavsiye> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.red[800],
            title: Text("Film Tavsiyesi"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              TextSayfasi(text: filmBankasi[filmIndex].filmAdi),
              ButtonBuild(
                icon: Icon(Icons.all_inclusive_rounded, size: 40),
                onPressed: () {
                  setState(() {
                    Random().nextInt(7) + 1;
                  });
                },
              ),
              const SizedBox(height: 25)
            ],
          ),
        ),
      ),
    );
  }
}
