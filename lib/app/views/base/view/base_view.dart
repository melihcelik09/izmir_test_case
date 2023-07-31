import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:izmir_test_case/app/views/base/view/widgets/bottom_navigation_bar_widget.dart';
import 'package:izmir_test_case/app/views/base/view_model/base_view_model.dart';

/// The `BaseView` class is a stateful widget that displays a bottom navigation bar and the current page
/// based on the selected index.
class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  late final BaseViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = BaseViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBarWidget(viewModel: _viewModel),
          body: _viewModel.pages.elementAt(_viewModel.currentPage),
        );
      },
    );
  }
}
