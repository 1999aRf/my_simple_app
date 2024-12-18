import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:my_simple_app/main.dart';

void main() {
  // Подключаем тестовый инструмент
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // Описываем тест
  testWidgets('Проверяем кнопку My first app for learning Flutter!!!', (WidgetTester tester) async {
    // Загружаем приложение
    await tester.pumpWidget(MyApp());

    // Проверяем, что кнопка с текстом "My first app for learning Flutter!!!" есть на экране
    expect(find.text('My first app for learning Flutter!!!'), findsOneWidget);

    // Находим кнопку и нажимаем на нее
    final Finder button = find.text('My first app for learning Flutter!!!');
    await tester.tap(button);

    // Ждем обновления интерфейса, если нужно
    await tester.pump();

    // В данном случае мы не проверяем изменений, но кнопку мы нашли и нажали
  });
}