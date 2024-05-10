import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TopNavBar extends StatefulWidget {
  final bool isHomePage;
  const TopNavBar({Key? key, required this.isHomePage}) : super(key: key);
  @override
  _TopNavBarState createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  double _sizedBoxHeight = 20.0;
  @override
  void initState() {
    super.initState();
    _sizedBoxHeight = widget.isHomePage ? 20.0 : 5.0;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        color: Color(0xFF817DC0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
  child: Row(
    children: [
      const CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/icons/man-avatar.png'),
        radius: 30,
      ),
      if (!widget.isHomePage)
        const SizedBox(width: 8), 
      if (!widget.isHomePage)
  Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Bakhtiyar Les",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
Row(
  children: [
    Icon(
      Icons.lightbulb_outline,
      color: Color.fromARGB(255, 184, 151, 33),
    ),
    Text("Сюда нужно придумать что нибудь")
  ],
),
        ],
      ),
    ],
  ),
    ],
  ),
),

                const Spacer(),
                PopupMenuButton(
                  offset: const Offset(0, 40), 
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'settings',
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(width: 8),
                          Text('Settings'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'sign_out',
                      child: Row(
                        children: [
                          Icon(Icons.exit_to_app),
                          SizedBox(width: 8),
                          Text('Sign out'),
                        ],
                      ),
                    ),
                  ],
                  onSelected: (value) {
                    if (value == 'settings') {
                      
                    } else if (value == 'sign_out') {
                      
                    }
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _sizedBoxHeight,
            ),
            if (widget.isHomePage)
              const Text(
                "Welcome, Bakhtiyar Les!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            if (widget.isHomePage)
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: double.infinity,
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 10.0,
                          lineWidth: 5.0,
                          percent: .55,
                          progressColor: Colors.deepOrange,
                          backgroundColor: Colors.white,
                        ),
                        const Text(
                          '  You finished 30% from your goals ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/icons/right-arrow.png',
                          width: 15,
                          height: 15,
                          fit: BoxFit.contain,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
