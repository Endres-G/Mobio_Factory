import 'package:aic_lll/core/widgets/loading_widget.dart';
import 'package:aic_lll/authentication/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: controller.isLoading.value
              ? const LoadingWidget()
              : SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(hintText: "email"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(hintText: "senha"),
                        ),
                        ElevatedButton(
                          onPressed: controller.login,
                          child: const Text("LOGAR"),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
