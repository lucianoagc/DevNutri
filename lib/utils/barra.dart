import 'package:flutter/material.dart';
import '../common/cores.dart';

class Barra extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Color backgroundColor;
  final Color textcolor;
  final double tamanho;

  const Barra({
    required this.text,
    this.backgroundColor = MinhasCores.preto,
    this.textcolor = MinhasCores.rosa,
    this.tamanho = 24,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      backgroundColor: backgroundColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: textcolor,
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
