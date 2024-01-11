```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:tinky/main.dart';
import 'package:tinky/frontend/main_screen.dart';
import 'package:tinky/frontend/chat_interface.dart';
import 'package:tinky/frontend/user_profile.dart';
import 'package:tinky/frontend/bot_profile.dart';
import 'package:tinky/frontend/file_sharing.dart';
import 'package:tinky/frontend/chat_history.dart';
import 'package:tinky/frontend/search.dart';
import 'package:tinky/frontend/notifications.dart';
import 'package:tinky/frontend/themes.dart';
import 'package:tinky/frontend/help_support.dart';
import 'package:tinky/frontend/animations.dart';
import 'package:tinky/frontend/sound_effects.dart';

void main() {
  testWidgets('Main Screen Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(MainScreen());
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Voice Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });

  testWidgets('Chat Interface Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(ChatInterface());
    expect(find.byKey(Key('chatInputField')), findsOneWidget);
    expect(find.byKey(Key('chatDisplayArea')), findsOneWidget);
    expect(find.byKey(Key('voiceVisualizer')), findsOneWidget);
  });

  testWidgets('User Profile Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(UserProfile());
    expect(find.byKey(Key('userProfileView')), findsOneWidget);
  });

  testWidgets('Bot Profile Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(BotProfile());
    expect(find.byKey(Key('botProfileView')), findsOneWidget);
  });

  testWidgets('File Sharing Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(FileSharing());
    expect(find.byKey(Key('filePreview')), findsOneWidget);
  });

  testWidgets('Chat History Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(ChatHistory());
    expect(find.byKey(Key('chatHistoryTab')), findsOneWidget);
  });

  testWidgets('Search Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(Search());
    expect(find.byKey(Key('searchBar')), findsOneWidget);
  });

  testWidgets('Notifications Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(Notifications());
    expect(find.text('Notifications'), findsOneWidget);
  });

  testWidgets('Themes Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(Themes());
    expect(find.text('Themes'), findsOneWidget);
  });

  testWidgets('Help & Support Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(HelpSupport());
    expect(find.text('Help & Support'), findsOneWidget);
  });

  testWidgets('Animations Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(Animations());
    expect(find.text('Animations'), findsOneWidget);
  });

  testWidgets('Sound Effects Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(SoundEffects());
    expect(find.text('Sound Effects'), findsOneWidget);
  });
}
```