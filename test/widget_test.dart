import 'package:flutter_test/flutter_test.dart';
import 'package:temp_converter/main.dart';

void main() {
  testWidgets('Temperature converter smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const TemperatureConverterApp());
    expect(find.text('Temperature converter'), findsWidgets);
    expect(find.text('Convert'), findsOneWidget);
  });
}
