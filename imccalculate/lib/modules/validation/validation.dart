import 'package:imccalculate/modules/view/outputview.dart';

mixin Parsedouble {
  double? parsedouble(String value, double? Function() onInput) {
    try {
      double response = double.parse(value);
      return response;
    } catch (e) {
      OutputView.feadback(
          "$value não é parametro válido, verifique e digite novamente \n");
      return onInput();
    }
  }
}
