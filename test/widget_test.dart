import 'package:flutter_test/flutter_test.dart';

import 'package:sectask2/main.dart';

void main() {
  testWidgets('Login opens Sign up and pops back', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Login'), findsOneWidget);

    await tester.tap(find.text('Sign up'));
    await tester.pumpAndSettle();
    expect(find.text('Create account'), findsOneWidget);

    await tester.tap(find.text('Log in'));
    await tester.pumpAndSettle();
    expect(find.text('Login'), findsOneWidget);
  });
}
