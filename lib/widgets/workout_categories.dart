import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fithub/utils/utils.dart';

class CategoryCard extends StatelessWidget {
  final String? svgSrc;
  final String? title;
  final Function()? press;

  const CategoryCard({
    Key? key,
    this.svgSrc,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(13), 
      child: Material(
        borderRadius: BorderRadius.circular(13), 
        color: Colors.transparent,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 228, 228, 228)),
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 37,
                spreadRadius: -15,
                color: kShadowColor,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgSrc ?? '',
                height: 100, 
                width: 100, 
              ),
              SizedBox(height: 20), 
              Text(
                title ?? '',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

