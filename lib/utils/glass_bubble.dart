import 'dart:ui';

import 'package:flutter/material.dart';
class GlassBubble extends StatelessWidget {
  final Widget child;

  const GlassBubble({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), // stronger blur
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15), // semi transparent
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.white.withOpacity(0.4), // subtle glass border
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.05),
                blurRadius: 12,
                spreadRadius: -2,
                offset: const Offset(-3, -3), // top-left glow
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 12,
                spreadRadius: -2,
                offset: const Offset(3, 3), // bottom-right shadow
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
