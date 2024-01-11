```dart
import 'package:flutter/material.dart';

class CustomAnimations {
  static AnimationController messageSendController;
  static AnimationController messageReceiveController;

  static void initialize(TickerProvider vsync) {
    messageSendController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: vsync,
    );

    messageReceiveController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: vsync,
    );
  }

  static Animation<Offset> get messageSendAnimation =>
      Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero).animate(
        CurvedAnimation(
          parent: messageSendController,
          curve: Curves.easeOut,
        ),
      );

  static Animation<Offset> get messageReceiveAnimation =>
      Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset.zero).animate(
        CurvedAnimation(
          parent: messageReceiveController,
          curve: Curves.easeOut,
        ),
      );
}
```