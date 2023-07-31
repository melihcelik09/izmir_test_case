import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/views/home/view/home_view.dart';
import 'package:izmir_test_case/app/views/pharmacy/view/pharmacy_view.dart';
import 'package:izmir_test_case/app/views/transport/view/transport_view.dart';
import 'package:mobx/mobx.dart';

part 'base_view_model.g.dart';

class BaseViewModel = BaseViewModelBase with _$BaseViewModel;

abstract class BaseViewModelBase with Store {
  List<Widget> pages = [
    const HomeView(),
    const PharmacyView(),
    const TransportView()
  ];

  @observable
  int currentPage = 0;

  @action
  void changePage(int index) {
    currentPage = index;
  }
}
