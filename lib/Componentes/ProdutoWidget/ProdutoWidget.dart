import 'package:flutter/material.dart';
import 'package:app_loja_tcc/Modelo/Produto.dart';
import 'package:app_loja_tcc/Estilos/style.dart';

class ProdutoWidget extends StatelessWidget {
  final Produto product;
  final Function press;
  const ProdutoWidget({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(padding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.imagem),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: padding / 4),
            child: Text(
              product.titulo,
              style: TextStyle(color: textLightColor),
            ),
          ),
          Text(
            "R\$ ${product.valor}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
