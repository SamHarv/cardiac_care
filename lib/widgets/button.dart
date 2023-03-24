import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? pressed;
  final double height;
  final double width;
  final Widget child;
  final Color colour;

  const Button({
    super.key,
    required this.pressed,
    required this.height,
    required this.width,
    required this.colour,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colour,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2,
              spreadRadius: 0,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: MediaQuery.of(context).size.height * height,
        width: MediaQuery.of(context).size.width * width,
        child: child,
      ),
    );
  }
}
