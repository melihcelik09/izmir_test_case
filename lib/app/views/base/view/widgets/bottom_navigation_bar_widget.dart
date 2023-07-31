import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:izmir_test_case/app/views/base/view_model/base_view_model.dart';

/// The `BottomNavigationBarWidget` class is a stateless widget that displays a bottom navigation bar
/// with icons and labels, and allows the user to switch between different pages.
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key, required this.viewModel});
  final BaseViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: viewModel.currentPage,
          onTap: viewModel.changePage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_information),
              label: 'Pharmacy',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_transportation),
              label: 'Transport',
            ),
          ],
        );
      },
    );
  }
}
