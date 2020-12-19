import 'package:app_loja_tcc/Estilos/style.dart';
import 'package:app_loja_tcc/Modelo/Produto.dart';
import 'package:flutter/material.dart';

class ProdutoFotoTituloWidget extends StatelessWidget {
  const ProdutoFotoTituloWidget({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "<Nome da loja>",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            produto.titulo,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: padding),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "R\$ ${produto.valor}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: padding),
              Expanded(
                child: Hero(
                  tag: "${produto.id}",
                  child: Image.asset(
                    produto.imagem,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
