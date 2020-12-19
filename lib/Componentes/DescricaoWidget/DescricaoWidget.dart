import 'package:app_loja_tcc/Estilos/style.dart';
import 'package:app_loja_tcc/Modelo/Produto.dart';
import 'package:flutter/material.dart';

class DescricaoWidget extends StatelessWidget {
  const DescricaoWidget({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: padding),
      child: Text(
        produto.descricao,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
