class MyCategory {
  String name;
  String image;

  MyCategory({required this.name, required this.image});

  static List<MyCategory> getCategoryList() {
    return [
      MyCategory(name: "Salad", image: "assets/images/plate2.svg"),
      MyCategory(name: "Cake", image: "assets/images/pancakes.svg"),
      MyCategory(name: "Pie", image: "assets/images/plate3.svg"),
      MyCategory(name: "Smoothies", image: "assets/images/orange-snacks.svg")
    ];
  }
}

class PopularMoodel {
  String name, description, image;

  PopularMoodel({
    required this.name,
    required this.description,
    required this.image,
  });

  static List<PopularMoodel> getPopularList() {
    return [
      PopularMoodel(
        name: "Blueberry Pancake",
        description: "Medium | 30mins | 230kCal",
        image: "assets/images/pancake-2.svg",
      ),
      PopularMoodel(
        name: "Salmon Nigiri",
        description: "Medium | 20mins | 120kCal",
        image: "assets/images/nigiri-1.svg",
      ),
      PopularMoodel(
        name: "Lowfat Milk",
        description: "Medium | 10mins | 150kCal",
        image: "assets/images/glass-of-milk 1.svg",
      ),
    ];
  }
}

class MyRecommendation {
  String name, description, image;

  MyRecommendation(
      {required this.name, required this.description, required this.image});

  static List<MyRecommendation> getRecommendationList() {
    return [
      MyRecommendation(
        name: "Honey Pancake",
        description: "Easy | 30mins | 180kCal",
        image: "assets/images/honey-pancakes.svg",
      ),
      MyRecommendation(
        name: "Canai Bread",
        description: "Easy | 20mins | 230kCal",
        image: "assets/images/bread.svg",
      ),
      MyRecommendation(
        name: "Honey Pancake",
        description: "Easy | 30mins | 180kCal",
        image: "assets/images/honey-pancakes.svg",
      ),
      MyRecommendation(
        name: "Canai Bread",
        description: "Easy | 20mins | 230kCal",
        image: "assets/images/bread.svg",
      ),
    ];
  }
}
