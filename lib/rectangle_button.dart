import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  final Function()? pressed;
  final String? buttonText;

  const RectangleButton({
    this.pressed,
    this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.09,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          elevation: MaterialStateProperty.all(4.0),
          backgroundColor: MaterialStateProperty.all<Color?>(
            Colors.white,
          ),
        ),
        onPressed: pressed,
        child: Text(
          '$buttonText',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
