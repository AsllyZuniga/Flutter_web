import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    print('AppBar Creado');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () => Navigator.popAndPushNamed(context, '/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () => Navigator.popAndPushNamed(context, '/provider'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra página',
            onPressed: () => Navigator.popAndPushNamed(context, '/page404'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
