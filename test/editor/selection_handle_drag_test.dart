import 'package:flutter_quill/src/editor/widgets/text/text_selection.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('selection handle drag math', () {
    test('moves the target continuously with the drag delta', () {
      expect(
        calculateTextSelectionHandleDragPosition(
          currentTarget: const Offset(40, 80),
          dragDelta: const Offset(12, 7),
        ),
        const Offset(52, 87),
      );
    });

    test('does not snap vertical movement to full line heights', () {
      expect(
        calculateTextSelectionHandleDragPosition(
          currentTarget: const Offset(40, 80),
          dragDelta: const Offset(0, 19),
        ),
        const Offset(40, 99),
      );
    });
  });
}
