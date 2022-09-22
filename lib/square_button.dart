import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String? text;
  final String? largeText;
  final Function()? pressed;

  const SquareButton({
    this.text,
    this.largeText,
    this.pressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.width * 0.42,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.white),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color?>(
            Colors.white,
          ),
          elevation: MaterialStateProperty.all(4.0),
        ),
        onPressed: pressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text == null ? '' : '$text',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            Text(
              largeText == null ? '' : '$largeText',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
