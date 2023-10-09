import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../manager/product_manager.dart';

class UserCheckoutButton extends StatelessWidget {
  final VoidCallback onPressed;

  const UserCheckoutButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:
          context.read<UserManager>().defaultMoney < 50 ? null : onPressed,
      child: Text('Checkout'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          context.watch<UserManager>().defaultMoney < 50
              ? Colors.grey
              : Colors.green,
        ),
      ),
    );
  }
}
