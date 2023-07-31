import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/app.dart';
import 'package:izmir_test_case/core/init/configuration/configuration.dart';

void main() async {
  await appConfiguration();
  runApp(const TestCaseApp());
}
