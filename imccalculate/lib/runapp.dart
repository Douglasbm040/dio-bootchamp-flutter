import 'package:imccalculate/modules/controller/imccontroller.dart';
import 'package:imccalculate/modules/view/inputview.dart';
import 'package:imccalculate/modules/view/outputview.dart';

void runApp() {
  IcmController(InputView().run()).controllerImc();
}
