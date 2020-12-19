import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_loja_tcc/Estilos/style.dart';
import 'Container/Body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: textColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: textColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: padding / 2)
      ],
    );
  }
}
