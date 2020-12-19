import 'package:flutter/material.dart';
import 'package:app_loja_tcc/Modelo/Produto.dart';

var produtos = <Produto>[
  Produto(
      id: 1,
      titulo: "Teclado Gamer",
      valor: 599.99,
      tamanho: 12,
      descricao: dummyText,
      imagem: "assets/images/teclado.png",
      color: Color(0xFF3D82AE)),
  Produto(
      id: 2,
      titulo: "Fone de ouvido",
      valor: 199.99,
      tamanho: 8,
      descricao: dummyText,
      imagem: "assets/images/fone1.png",
      color: Color(0xFFD3A984)),
  Produto(
      id: 3,
      titulo: "Celular da maçã",
      valor: 5999.99,
      tamanho: 10,
      descricao: dummyText,
      imagem: "assets/images/iphone.png",
      color: Color(0xFF989493)),
  Produto(
      id: 4,
      titulo: "Estação de Jogar 4",
      valor: 2599.99,
      tamanho: 11,
      descricao: dummyText,
      imagem: "assets/images/ps4.png",
      color: Color(0xFFE6B398)),
];

String dummyText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus efficitur pellentesque pharetra. Aliquam bibendum, tellus non blandit pharetra, purus ex euismod dolor, sit amet efficitur ex risus quis mauris. In ultrices urna in neque euismod pretium. Phasellus ac eleifend lorem. Morbi eget dolor nec velit aliquet pulvinar. In ultrices tortor et ligula finibus, in posuere elit auctor. Mauris nec turpis id urna gravida venenatis. Nam tincidunt nunc nec libero pellentesque ultrices. Donec laoreet lacinia risus eu viverra. Donec dignissim tristique mauris a laoreet. In hac habitasse platea dictumst.";
