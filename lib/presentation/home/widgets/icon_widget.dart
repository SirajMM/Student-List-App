import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final String iconImage;
  const IconWidget({
    super.key,
    required this.iconImage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(iconImage))),
    );
  }
}
