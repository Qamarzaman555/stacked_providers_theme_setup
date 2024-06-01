import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_vm.dart';

class HomeVU extends StackedView<HomeVM> {
  const HomeVU({super.key});

  @override
  Widget builder(BuildContext context, HomeVM viewModel, Widget? child) =>
      const SizedBox.shrink();

  @override
  HomeVM viewModelBuilder(BuildContext context) => HomeVM();
}
