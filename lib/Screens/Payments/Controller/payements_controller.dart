import 'package:get/get.dart';

class PaymentsController extends GetxController {
  RxBool pendingPaymentsSelected = true.obs;

  void toggleSelectedPayment(bool check) {
    pendingPaymentsSelected.value = check;
  }

  RxString selected = "".obs;

  final listType = [
    '1 week',
    '2 weeks',
    '3 weeks',
    '4 weeks',
    '5 weeks',
  ];

  void setSelected(String value) {
    selected.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    pendingPaymentsSelected.value = true;
  }
}
