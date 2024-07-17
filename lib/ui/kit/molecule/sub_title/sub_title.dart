import 'package:coinz_app/ui/kit/base/constants/offset.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  const SubTitle({
    super.key,
    required this.title,
    this.actions = const []
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
      height: 42,
      padding: EdgeInsets.symmetric(
        horizontal: OffsetConstants.normal.size
      ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium,),
            ...actions.map((element) => Padding(
                padding: EdgeInsets.only(
                    left: OffsetConstants.small.size
                ),
                child: element,
            ))
          ],
        ),
      ),
    );
  }
}
