import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fithub/widgets/nutrition_models.dart';
import 'package:fithub/utils/utils.dart';

class SectionCategory extends StatefulWidget {
  const SectionCategory({Key? key});

  @override
  State<SectionCategory> createState() => _SectionCategoryState();
}

class _SectionCategoryState extends State<SectionCategory> {
  List<MyCategory> categoryList = [];

  _getCategoryList() => categoryList = MyCategory.getCategoryList();

  @override
  Widget build(BuildContext context) {
    _getCategoryList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 15, left: 20.0),
          child: Text(
            "Category",
            style: TextStyle(
              color: Color(0xff1D1617),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (BuildContext context, index) {
                return ItemCategory(
                    categoryName: categoryList[index].name,
                    categoryImage: categoryList[index].image,
                    categoryIndex: index);
              }),
        ),
      ],
    );
  }
}

class ItemCategory extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  final int categoryIndex;
  const ItemCategory({
    Key? key,
    required this.categoryName,
    required this.categoryImage,
    required this.categoryIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 90.0,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: itEvenNumber(categoryIndex)
                ? [
                    const Color(0xff9DCEFF).withOpacity(0.2),
                    const Color(0xff92A3FD).withOpacity(0.2)
                  ]
                : [
                    const Color(0xffC58BF2).withOpacity(0.2),
                    const Color(0xffEEA4CE).withOpacity(0.2)
                  ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              categoryImage,
              height: 18.0,
            ),
            Text(
              categoryName,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1D1617)),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionPopular extends StatelessWidget {
  const SectionPopular({Key? key});

  @override
  Widget build(BuildContext context) {
    List<PopularMoodel> popularList = PopularMoodel.getPopularList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 30.0),
          child: Text(
            "Popular",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1D1617)),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: popularList.length,
          itemBuilder: ((context, index) {
            return SectionPopularItem(
              name: popularList[index].name,
              description: popularList[index].description,
              image: popularList[index].image,
            );
          }),
        ),
        const SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}

class SectionPopularItem extends StatelessWidget {
  final String name, description, image;
  const SectionPopularItem({
    Key? key,
    required this.name,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Color(0x121D1617),
            spreadRadius: 0,
            blurRadius: 40,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            height: 45.0,
            image,
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1617)),
              ),
              Text(
                description,
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7B6F72)),
              ),
            ],
          ),
          SvgPicture.asset(
            height: 14.0,
            'assets/icons/Arrow-Right.svg',
          )
        ],
      ),
    );
  }
}

class SectionRecomendation extends StatelessWidget {
  const SectionRecomendation({Key? key});

  @override
  Widget build(BuildContext context) {
    List<MyRecommendation> recommendationList = MyRecommendation.getRecommendationList();
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Recommendation \nfor Diet",
              style: TextStyle(
                color: Color(0xff1D1617),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendationList.length,
              itemBuilder: (BuildContext context, index) {
                return RecomendationItem(
                  recommendationName: recommendationList[index].name,
                  recommendationDesc: recommendationList[index].description,
                  recommendationImg: recommendationList[index].image,
                  recommendationIndex: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class RecomendationItem extends StatelessWidget {
  final String recommendationName, recommendationDesc, recommendationImg;
  final int recommendationIndex;
  const RecomendationItem({
    Key? key,
    required this.recommendationName,
    required this.recommendationDesc,
    required this.recommendationImg,
    required this.recommendationIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 200,
        height: 240,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: itEvenNumber(recommendationIndex)
                  ? [                      
                      const Color(0xff9DCEFF).withOpacity(.2),
                      const Color(0xff92A3FD).withOpacity(.2),
                    ]
                  : [
                      const Color(0xffC58BF2).withOpacity(.2),
                      const Color(0xffEEA4CE).withOpacity(.2)
                    ],
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              recommendationImg,
              height: 80,
            ),
            Column(
              children: [
                Text(
                  recommendationName,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1D1617)),
                ),
                Text(
                  recommendationDesc,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7B6F72)),
                ),
              ],
            ),
            MyGradientButton(index: recommendationIndex,)
          ],
        ),
      ),
    );
  }
}

class MyGradientButton extends StatelessWidget {
  final int index;
  const MyGradientButton({Key? key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 110.0,
        height: 38.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: itEvenNumber(index)
                ? [
                    const Color(0xff9DCEFF),
                    const Color(0xff92A3FD),
                  ]
                : [
                    const Color(0xffC58BF2),
                    const Color(0xffEEA4CE),
                  ],
          ),
          borderRadius: BorderRadius.circular(99),
        ),
        child: const Text(
          "View",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 12.0,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}