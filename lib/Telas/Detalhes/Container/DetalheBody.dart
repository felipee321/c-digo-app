import 'package:app_loja_tcc/Componentes/AdicionarCarrinhoWidget/AdicionarCarrinhoWidget.dart';
import 'package:app_loja_tcc/Componentes/ContadorComFavWidget/ContadorComFavWidget.dart';
import 'package:app_loja_tcc/Componentes/CorTamanhoWidget/CorTamanhoWidget.dart';
import 'package:app_loja_tcc/Componentes/DescricaoWidget/DescricaoWidget.dart';
import 'package:app_loja_tcc/Componentes/ProdutoFotoTituloWiget/ProdutoFotoTituloWidget.dart';
import 'package:app_loja_tcc/Estilos/style.dart';
import 'package:app_loja_tcc/Modelo/Produto.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Produto produto;

  const Body({Key key, this.produto}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: padding,
                    right: padding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      CorTamanhoWidget(produto: produto),
                      SizedBox(height: padding / 2),
                      DescricaoWidget(produto: produto),
                      SizedBox(height: padding / 2),
                      ContadorComFavWidget(),
                      SizedBox(height: padding / 2),
                      AdicionarCarrinhoWidget(produto: produto)
                    ],
                  ),
                ),
                ProdutoFotoTituloWidget(produto: produto)
              ],
            ),
          )
        ],
      ),
    );
  }
}
