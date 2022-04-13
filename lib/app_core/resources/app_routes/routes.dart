import 'package:flutter/material.dart';
import 'package:wallet_task/app_core/resources/app_routes_names/app_routes_names.dart';
import 'package:wallet_task/features/wallet/wallet_widget.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    AppRoutesNames.walletWidget: (_) =>  WalletWidget(),
    // AppRoutesNames.testTextFiledPage: (_) => const TestTextFiledPage(),
  };
}
