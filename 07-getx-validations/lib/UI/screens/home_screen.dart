import 'package:flutter/material.dart';
import 'package:getx_validations/UI/widgets/forms/card_register_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardRegisterForm(),
      ),
    );
  }
}
