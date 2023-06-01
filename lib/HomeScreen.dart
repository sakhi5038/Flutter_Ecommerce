import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),
    body: AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: animation.drive(
              Tween(
                begin: Offset(1.0, 0.0),
                end: Offset.zero,
              ),
            ),
            child: child,
          ),
        );
      },
      child: _buildCurrentTab(),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Tab 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Tab 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Tab 3',
        ),
      ],
    ),
  );
}

Widget _buildCurrentTab() {
  switch (_currentIndex) {
    case 0:
      return Container(
        key: ValueKey<int>(0),
        color: Colors.blue,
      );
    case 1:
      return Container(
        key: ValueKey<int>(1),
        color: Colors.green,
      );
    case 2:
      return Container(
        key: ValueKey<int>(2),
        color: Colors.orange,
      );
    default:
      return Container();
  }
}

}




// @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Home'),
  //     ),
  //     body: PageView(
  //       controller: _pageController,
  //       onPageChanged: (index) {
  //         setState(() {
  //           _currentIndex = index;
  //         });
  //       },
  //       children: [
  //         // Replace with your tab screens
  //         Container(color: Colors.blue),
  //         Container(color: Colors.green),
  //         Container(color: Colors.orange),
  //       ],
  //     ),
  //     bottomNavigationBar: BottomNavigationBar(
  //       currentIndex: _currentIndex,
  //       onTap: _onTabTapped,
  //       items: [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Tab 1',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.search),
  //           label: 'Tab 2',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.favorite),
  //           label: 'Tab 3',
  //         ),
  //       ],
  //     ),
  //   );
  // }
