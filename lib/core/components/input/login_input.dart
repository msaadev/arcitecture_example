import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lib_msaadev/lib_msaadev.dart';

class LoginInput extends StatelessWidget {
  final String? hint;
  final List<TextInputFormatter>? formatter;
  final TextEditingController? controller;
  final bool obscure, readOnly;
  final TextInputType type;
  final int minLines, maxLines;
  final Function()? onEditingComplete;
  final String? Function(String? text)? validator;
  final String? Function(String? text)? onChanged;
  final FocusNode? focusNode;
  final BorderRadius? radius;
  final Function()? onTap;

  const LoginInput(
      {Key? key,
      this.hint,
      this.controller,
      this.obscure = false,
      this.onEditingComplete,
      this.validator,
      this.formatter,
      this.type = TextInputType.text,
      this.readOnly = false,
      this.minLines = 1,
      this.maxLines = 1,
      this.onChanged,
      this.focusNode,
      this.radius,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 500.millisecondsDuration,
      child: TextFormField(
        onTap: onTap,
        focusNode: focusNode,
        onChanged: onChanged,
        maxLines: maxLines,
        minLines: minLines,
        readOnly: readOnly,
        keyboardType: type,
        inputFormatters: formatter,
        validator: validator,
        onEditingComplete:
            onEditingComplete ?? () => FocusScope.of(context).nextFocus(),
        obscureText: obscure,
        controller: controller,
        style: context.textTheme.bodyText1!,
        decoration: InputDecoration(
          contentPadding: [10, 10].paddingSymmetric,
          errorStyle: context.textTheme.bodyText1!
              .copyWith(color: Colors.red, fontSize: 10),
          hintText: hint,
          hintStyle: context.textTheme.bodyText1!,
          enabledBorder: buildBorder,
          border: buildBorder,
          errorBorder: buildBorder,
          focusedBorder: buildBorder,
          disabledBorder: buildBorder,
          focusedErrorBorder: buildBorder,
        ),
      ),
    );
  }

  OutlineInputBorder get buildBorder =>const  OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black));
}
