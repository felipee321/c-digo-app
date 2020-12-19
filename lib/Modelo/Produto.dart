import 'dart:ffi';

import 'package:flutter/material.dart';

class Produto {
  final String descricao, imagem, titulo;
  final int id, tamanho;
  final double valor;
  final Color color;
  Produto({
    this.id,
    this.imagem,
    this.titulo,
    this.valor,
    this.descricao,
    this.tamanho,
    this.color,
  });
}
