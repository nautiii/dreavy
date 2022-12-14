import 'dart:math';

import 'package:flutter/material.dart';
import 'glass_container.dart';

class GlassFloatingButton extends StatelessWidget {
  const GlassFloatingButton({
    Key? key,
    required this.onPress,
    required this.size,
    required this.icon,
  }) : super(key: key);

  final void Function() onPress;
  final double size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: String.fromCharCodes(
        Iterable<int>.generate(
          10,
          (_) => 'abcdef123456'
              .codeUnitAt(Random().nextInt('abcdef123456'.length)),
        ),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      onPressed: onPress,
      child: GlassContainer(
        height: size,
        width: size,
        radius: 128.0,
        child: Icon(icon),
      ),
    );
  }
}
