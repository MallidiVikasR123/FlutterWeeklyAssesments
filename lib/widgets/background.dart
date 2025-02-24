import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: const BoxConstraints.expand(width: 500),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFe88437),
            Color(0xFFeba058),
            Color(0xFFf4c897),
            Color(0xFFf6ebe0),
            Color(0xFFf6f8f7),
            Color(0xFFf6f8f7),
            Color(0xFFf6f8f7),
            Color(0xFFf6f8f7),
            Color(0xFFf6f8f7)
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
