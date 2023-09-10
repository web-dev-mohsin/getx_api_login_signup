import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var isCounting = true.obs; // Add a boolean flag

  void increment() {
    if (isCounting.value) {
      count++;
    }
  }

  void decrement() {
    if (count > 0) {
      count--;
    }
  }

  void toggleCounting() {
    isCounting.value = !isCounting.value; // Toggle the boolean flag
  }
}
