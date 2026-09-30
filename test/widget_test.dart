import 'package:cash_control/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App loads and displays 5 bottom navigation tabs in Arabic', (WidgetTester tester) async {
    await tester.pumpWidget(const CashControlApp());
    await tester.pumpAndSettle();

    expect(find.text('الرئيسية'), findsNWidgets(2)); // Title and Tab bar label
    expect(find.text('الوردية'), findsOneWidget);
    expect(find.text('الموردين'), findsOneWidget);
    expect(find.text('المصروفات'), findsOneWidget);
    expect(find.text('التقارير'), findsOneWidget);

    // Verify directional text / RTL layout
    final BuildContext context = tester.element(find.byType(Scaffold).first);
    expect(Directionality.of(context), TextDirection.rtl);
  });

  testWidgets('Tab navigation switches between screens', (WidgetTester tester) async {
    await tester.pumpWidget(const CashControlApp());
    await tester.pumpAndSettle();

    // Tap on "الموردين"
    await tester.tap(find.text('الموردين'));
    await tester.pumpAndSettle();

    expect(find.text('شاشة حسابات ومعاملات الموردين'), findsOneWidget);
  });
}
