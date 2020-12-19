import 'package:app_loja_tcc/Telas/Detalhes/Detalhes.dart';
import 'package:flutter/material.dart';
import 'package:app_loja_tcc/Estilos/style.dart';
import 'package:app_loja_tcc/Modelo/Mocks/Produtos.dart';
import 'package:app_loja_tcc/Componentes/ProdutoWidget/ProdutoWidget.dart';
import 'package:app_loja_tcc/Componentes/CategoriaWidget/CartegoriaWidget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          child: Text(
            "Eletrônicos",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        CartegoriaWidget(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: GridView.builder(
                itemCount: produtos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: padding,
                  crossAxisSpacing: padding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ProdutoWidget(
                      product: produtos[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaDetalhes(
                              produto: produtos[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
