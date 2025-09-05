import 'package:slide_to_act/slide_to_act.dart';
import 'package:flutter/material.dart';

class SlideButton extends StatelessWidget {
  final bool isToggled;
  final VoidCallback onToggle;

  const SlideButton({
    super.key,
    required this.isToggled,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: SlideAction(
        sliderRotate: false,
        reversed: isToggled,
        outerColor: isToggled ? Colors.red : Colors.green,
        innerColor: Colors.white,
        elevation: 0,
        text: isToggled ? 'Detener trabajo' : 'Comenzar trabajo',
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        sliderButtonIcon: Icon(
          isToggled ? Icons.close : Icons.check,
          color: isToggled ? Colors.red : Colors.green,
        ),
        submittedIcon: Icon(
          isToggled ? Icons.close : Icons.check,
          color: Colors.white,
          size: 30,
        ),
        onSubmit: () {
          onToggle();
          return null;
        },
      ),
    );
  }
}