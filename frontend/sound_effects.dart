```dart
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundEffects {
  AudioCache player = AudioCache();

  Future playSound(String soundName) async {
    await player.play('$soundName.mp3');
  }
}

class SoundButton extends StatelessWidget {
  final String soundName;
  final SoundEffects soundEffects;

  SoundButton({required this.soundName, required this.soundEffects});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.music_note),
      onPressed: () {
        soundEffects.playSound(soundName);
      },
    );
  }
}
```