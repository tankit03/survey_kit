import 'package:flutter/widgets.dart';

class AppBarConfiguration {
  final Widget? leading;
  final bool? canBack;
  final bool? showProgress;
  final Widget? trailing;

  const AppBarConfiguration({
    required this.canBack,
    this.showProgress = false,
    this.leading,
    this.trailing = const SizedBox(
      height: 0,
      width: 0,
    ),
  });
}
