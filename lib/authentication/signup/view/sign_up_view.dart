import 'package:aic_lll/core/widgets/loading_widget.dart';
import 'package:aic_lll/authentication/signup/controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

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
                          controller: controller.emailController,
                          decoration: const InputDecoration(
                            hintText: "Email",
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.businessNameController,
                        decoration:
                            const InputDecoration(hintText: "nome da empresa"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.cnpjController,
                        decoration: const InputDecoration(hintText: "cnpj"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.passwordController,
                        decoration: const InputDecoration(hintText: "senha"),
                      ),
                      ElevatedButton(
                        onPressed: controller.signUp,
                        child: const Text("Registrar"),
                      ),
                    ],
                  )),
                ),
        ),
      ),
    );
  }
}
