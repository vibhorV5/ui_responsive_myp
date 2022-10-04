import 'package:get/get.dart';

class PaymentsController extends GetxController {
  RxBool pendingPaymentsSelected = true.obs;

  void toggleSelectedPayment(bool check) {
    pendingPaymentsSelected.value = check;
  }

  @override
  void onInit() {
    super.onInit();
    pendingPaymentsSelected.value = true;
  }
}
