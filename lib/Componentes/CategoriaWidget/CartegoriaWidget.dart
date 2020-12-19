import 'package:flutter/material.dart';
import 'package:app_loja_tcc/Estilos/style.dart';

class CartegoriaWidget extends StatefulWidget {
  @override
  _CartegoriaWidget createState() => _CartegoriaWidget();
}

class _CartegoriaWidget extends State<CartegoriaWidget> {
  List<String> categories = ["RAM", "Video", "Celulares", "Acessórios"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: padding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? textColor : textLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: padding / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
