import 'package:aic_lll/core/widgets/loading_widget.dart';
import 'package:aic_lll/welcome/controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SafeArea(
          child: controller.isLoading.value
              ? const LoadingWidget()
              : SingleChildScrollView(
                  child: Center(
                    child: Container(
                      color: Colors.amber,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ))),
    );
  }
}
