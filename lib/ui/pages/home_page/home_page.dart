import 'package:coinz_app/ui/kit/base/constants/offset.dart';
import 'package:coinz_app/ui/kit/molecule/cart_balance/cart_balance.dart';
import 'package:coinz_app/ui/kit/molecule/sub_title/sub_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Главная'),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  OffsetConstants.normal.size
                ),
                child: const CartBalance(
                  title: '**** **** **** 1234',
                  balance: 3000.99,
                ),
              ),
              SubTitle(
                  title: 'История',
                  actions: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.add)
                    ),
                  ],
              )
            ],
          ),
        )
    );
  }
}
