import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.amber,
        valueColor: AlwaysStoppedAnimation(
          Colors.black,
        ),
      ),
    );
  }
}
