import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'welcome_vm.dart';

class WelcomePageVU extends StackedView<WelcomePageVM> {
  const WelcomePageVU({super.key});

  @override
  Widget builder(BuildContext context, WelcomePageVM viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: const Center(
        child: Text('Welcome to the Flutter Demo App!'),
      ),
    );
  }

  @override
  WelcomePageVM viewModelBuilder(BuildContext context) => WelcomePageVM();
}
