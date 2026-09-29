import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xFFF8FAFC),
        ),

        // Top-right decoration
        Positioned(
          top: -100,
          right: -90,
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF2563EB)
                  .withValues(alpha: 0.07),
            ),
          ),
        ),

        // Middle-left decoration
        Positioned(
          top: 220,
          left: -120,
          child: Container(
            width: 220,
            height: 220,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF06B6D4)
                  .withValues(alpha: 0.05),
            ),
          ),
        ),

        // Bottom-right decoration
        Positioned(
          bottom: -120,
          right: -90,
          child: Container(
            width: 260,
            height: 260,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF2563EB)
                  .withValues(alpha: 0.05),
            ),
          ),
        ),

        // Tiny decorative material tiles
        Positioned(
          top: 115,
          left: 35,
          child: Transform.rotate(
            angle: -0.35,
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: const Color(0xFF2563EB)
                      .withValues(alpha: 0.08),
                ),
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 150,
          left: 28,
          child: Transform.rotate(
            angle: 0.4,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF06B6D4)
                      .withValues(alpha: 0.07),
                ),
              ),
            ),
          ),
        ),

        child,
      ],
    );
  }
}