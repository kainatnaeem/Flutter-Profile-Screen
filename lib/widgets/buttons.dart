import 'package:flutter/material.dart';

class ButtonsContainer extends StatefulWidget {
  const ButtonsContainer({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;
  @override
  State<ButtonsContainer> createState() => _ButtonsContainerState();
}

class _ButtonsContainerState extends State<ButtonsContainer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.39,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.082,
            width: MediaQuery.of(context).size.width * 0.3,
            color: Colors.white,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [Text(widget.text1), Text(widget.text2)],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
