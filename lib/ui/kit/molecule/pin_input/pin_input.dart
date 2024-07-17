import 'package:coinz_app/ui/kit/base/constants/offset.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinInput extends StatelessWidget {
  const PinInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      defaultPinTheme: _defaultTheme(context),
      focusedPinTheme: _focusedTheme(context),
      obscureText: true,
    );
  }

  PinTheme _defaultTheme(BuildContext context){
    var theme = Theme.of(context);

    return PinTheme(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OffsetConstants.normal.size),
        border: Border.all(
          color: theme.colorScheme.outlineVariant
        )
      ),
      textStyle: theme.textTheme.titleLarge?.apply(
        color: theme.colorScheme.outline
      )
    );
  }

  PinTheme _focusedTheme(BuildContext context){
    return _defaultTheme(context).copyWith(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(OffsetConstants.normal.size),
            border: Border.all(
                color: Theme.of(context).colorScheme.primary
            )
        )
    );
  }
}
