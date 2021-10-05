import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const LoginButton({Key? key, required this.label, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: 100.customRadius,
        ),
        child: Text(
          label,
          style: context.textTheme.headline6!.copyWith(color: Colors.white),
        )).onTap(onTap);
  }
}
