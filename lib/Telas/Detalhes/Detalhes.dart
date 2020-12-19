import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_loja_tcc/Modelo/Produto.dart';
import 'package:app_loja_tcc/Estilos/style.dart';
import 'Container/DetalheBody.dart';

class TelaDetalhes extends StatelessWidget {
  final Produto produto;

  const TelaDetalhes({Key key, this.produto}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: produto.color,
      appBar: buildAppBar(context),
      body: Body(produto: produto),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: produto.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: padding / 2)
      ],
    );
  }
}
