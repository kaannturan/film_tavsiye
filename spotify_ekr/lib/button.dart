import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonBuild extends StatefulWidget {
  ButtonBuild({super.key, this.onPressed, required this.icon});

  void Function()? onPressed;
  final Icon icon;

  @override
  State<ButtonBuild> createState() => _ButtonBuildState();
}

class _ButtonBuildState extends State<ButtonBuild> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 70,
            child: Card(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.onPressed;
                      });
                    },
                    child: widget.icon)),
          ),
        ],
      ),
    );
  }
}
