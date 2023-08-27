import 'package:flutter/material.dart';

/// it includes the following:
/// 1. custom Square thumb shape
/// 2. custom Square overlay

class CustomSquareThumbShape extends SliderComponentShape {
  final double thumb_Radius; // You can adjust this based on your needs
  final Color thumb_Color;

  const CustomSquareThumbShape(
      {this.thumb_Radius = 10.0, this.thumb_Color = Colors.blue});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumb_Radius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()..color = thumb_Color; // Customize thumb color

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
            center: center, width: thumb_Radius * 2, height: thumb_Radius * 2),
        Radius.circular(0.0), // This value ensures square corners
      ),
      paint,
    );
  }
}

class CustomSquareOverlayShape extends SliderComponentShape {
  final double overlayRadius; // You can adjust this based on your needs
  final Color overlayColor;
  final double overlayOpacity;

  const CustomSquareOverlayShape({
    this.overlayRadius = 30.0,
    this.overlayColor = Colors.blue, // Default color
    this.overlayOpacity = 0.3, // Default opacity
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(overlayRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = overlayColor.withOpacity(overlayOpacity);

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromCenter(
            center: center,
            width: overlayRadius * 2,
            height: overlayRadius * 2),
        topLeft: Radius.circular(0.0),
        topRight: Radius.circular(0.0),
        bottomLeft: Radius.circular(0.0),
        bottomRight: Radius.circular(0.0),
      ),
      paint,
    );
  }
}
