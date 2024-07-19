import 'package:coinz_app/ui/kit/base/constants/offset.dart';
import 'package:coinz_app/ui/kit/base/constants/patterns.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class CartBalance extends StatelessWidget {
  final String title;
  final double balance;

  const CartBalance({super.key, required this.title, required this.balance});

  @override
  Widget build(BuildContext context) {
    var randomPattern = Patterns.random;

    return _StyledContainer(
        pattern: randomPattern,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _Title(title: title),
            const Spacer(),
            _Balance(balance: balance)
          ],
        )
    );
  }
}

class _Balance extends StatelessWidget {
  final double balance;

  const _Balance({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Баланс',
          style: Theme.of(context).textTheme.bodySmall?.apply(
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(.6)),
        ),
        SizedBox(height: OffsetConstants.small.size),
        Text(
          _formattedBalance(),
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.apply(color: Theme.of(context).colorScheme.onPrimary),
        )
      ],
    );
  }

  String _formattedBalance() {
    return NumberFormat.simpleCurrency(locale: 'ru-RU').format(balance);
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.apply(color: Theme.of(context).colorScheme.onPrimary),
    );
  }
}

class _StyledContainer extends StatelessWidget {
  final Widget child;
  final Patterns pattern;

  const _StyledContainer({required this.child, required this.pattern});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 170,
        width: double.maxFinite,

        child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(OffsetConstants.large.size)),

            child: Stack(
              children: [
                Positioned(
                    right: -35,
                    bottom: -35,
                    child: SvgPicture.asset(
                        pattern.path,
                        semanticsLabel: pattern.label
                    )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: OffsetConstants.normal.size,
                      horizontal: OffsetConstants.large.size,
                  ),
                  child: child,
                ),
              ],
            ),
        )
    );
  }
}


