import 'package:flutter_quill/src/editor/widgets/text/text_selection.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('selection handle drag math', () {
    test('keeps handle y on the same line until a full line is dragged', () {
      expect(
        calculateTextSelectionHandleDragPosition(
          dragDy: 119,
          previousHandleDragDy: 100,
          preferredLineHeight: 20,
        ),
        100,
      );
    });

    test('moves handle y by whole line heights in both directions', () {
      expect(
        calculateTextSelectionHandleDragPosition(
          dragDy: 120,
          previousHandleDragDy: 100,
          preferredLineHeight: 20,
        ),
        120,
      );
      expect(
        calculateTextSelectionHandleDragPosition(
          dragDy: 59,
          previousHandleDragDy: 100,
          preferredLineHeight: 20,
        ),
        60,
      );
    });
  });
}
