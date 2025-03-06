import 'package:flutter/material.dart';
import 'main.dart';

class TextSayfasi extends StatefulWidget {
  TextSayfasi({super.key, required this.text});

  final String text;

  @override
  State<TextSayfasi> createState() => _TextSayfasiState();
}

class _TextSayfasiState extends State<TextSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 400,
            height: 300,
            child: Text(filmBankasi[filmIndex].filmAdi,
                style: TextStyle(fontSize: 30, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
