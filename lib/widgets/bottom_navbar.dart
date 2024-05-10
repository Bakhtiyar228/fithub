import 'package:flutter/material.dart';
import 'package:fithub/utils/utils.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateCurrentIndex();
  }

  void _updateCurrentIndex() {
    String currentRoute = ModalRoute.of(context)!.settings.name ?? '/';
    _currentIndex = ['/', '/workout', '/nutrition', '/community'].indexOf(currentRoute);
    if (_currentIndex == -1) _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildNavItem("Home", Icons.home, 0),
            buildNavItem("Workout", Icons.fitness_center, 1),
            buildNavItem("Nutrition", Icons.local_dining, 2),
            buildNavItem("Community", Icons.group, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(String title, IconData icon, int index) {
    bool isActive = _currentIndex == index;
    return GestureDetector(
      onTap: () => _handlePress(index),
      child: SizedBox(
        width: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isActive ? kActiveIconColor.withOpacity(0.8) : Colors.transparent,
              ),
              padding: EdgeInsets.all(isActive ? 8 : 0),
              child: Icon(
                icon,
                color: isActive ? Colors.white : Color.fromARGB(255, 154, 142, 190),
              ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                color: isActive ? kActiveIconColor : Color.fromARGB(255, 154, 142, 190),
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handlePress(int index) {
    setState(() {
      _currentIndex = index;
    });

    List<String> routes = ['/', '/workout', '/nutrition', '/community'];
    if (index >= 0 && index < routes.length) {
      Navigator.pushNamed(context, routes[index]);
    }
  }
}
