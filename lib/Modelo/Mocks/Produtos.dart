import 'package:flutter/material.dart';
import 'package:app_loja_tcc/Modelo/Produto.dart';

var produtos = <Produto>[
  Produto(
      id: 1,
      titulo: "Teclado Gamer",
      valor: 599.99,
      tamanho: 12,
      descricao: "Teclado de alto desempenho permite que você desfrute de horas ilimitadas de jogos. Foi especialmente desenvolvido para que você possa expressar suas habilidades e seu estilo. Melhore a sua experiência de jogo, seja você só um amador ou todo um especialista, e faça que suas jogadas atingam outro nível.",
      imagem: "assets/images/teclado.png",
      color: Color(0xFF3D82AE)),
  Produto(
      id: 2,
      titulo: "Fone de ouvido",
      valor: 199.99,
      tamanho: 8,
      descricao: "Quando o assunto é som e música, qualidade e conforto são o que faz a diferença. Afinal, o prazer está em cada timbre e o modo como nossos ouvidos recepcionam a trilha sonora que tornam o nosso dia melhor.",
      imagem: "assets/images/fone1.png",
      color: Color(0xFFD3A984)),
  Produto(
      id: 3,
      titulo: "iPhone 8",
      valor: 5999.99,
      tamanho: 10,
      descricao: "Design inovador, totalmente em vidro. A câmera que o mundo inteiro adora, ainda melhor. Um chip mais poderoso e inteligente. Recarga sem fio simples de verdade. O iPhone 8 é brilhante.",
      imagem: "assets/images/iphone.png",
      color: Color(0xFF989493)),
  Produto(
      id: 4,
      titulo: "PlayStation 4",
      valor: 2599.99,
      tamanho: 11,
      descricao: "Mais leve e mais fino, o sistema PlayStation 4 tem disco rígido de 1 TB para tudo o que há de melhor em jogos, músicas e muito mais!",
      imagem: "assets/images/ps4.png",
      color: Color(0xFFE6B398)),
];

String dummyText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus efficitur pellentesque pharetra. Aliquam bibendum, tellus non blandit pharetra, purus ex euismod dolor, sit amet efficitur ex risus quis mauris. In ultrices urna in neque euismod pretium. Phasellus ac eleifend lorem. Morbi eget dolor nec velit aliquet pulvinar. In ultrices tortor et ligula finibus, in posuere elit auctor. Mauris nec turpis id urna gravida venenatis. Nam tincidunt nunc nec libero pellentesque ultrices. Donec laoreet lacinia risus eu viverra. Donec dignissim tristique mauris a laoreet. In hac habitasse platea dictumst.";
