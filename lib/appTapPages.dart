import 'package:delivery_food_delyo/tabNavigator.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;

class AppTabPage extends StatefulWidget {
  @override
  _AppTabPageState createState() => _AppTabPageState();
}

class _AppTabPageState extends State<AppTabPage> {
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };

  int currentTab = 0;

  void _selectTab(int tabIndex) {
    setState(() {
      currentTab = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[currentTab].currentState.maybePop(),
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentTab,
          items: [
            _buildItem(tabName: 'Home', tabIcon: Icons.home, tabIndex: 0),
            _buildItem(tabName: 'Shop', tabIcon: Icons.store, tabIndex: 1),
            _buildItem(tabName: 'Cart', tabIcon: Icons.shopping_basket, tabIndex: 2),
            _buildItem(tabName: 'Profile', tabIcon: Icons.face, tabIndex: 3),
          ],
          onTap: _selectTab,
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem({String tabName, IconData tabIcon, int tabIndex}) {
    return BottomNavigationBarItem(
      icon: Icon(
        tabIcon,
        color: _colorTabMatching(tabIndex),
      ),
      title: Text(
        tabName,
        style: TextStyle(
          color: _colorTabMatching(tabIndex),
        ),
      ),
    );
  }

  Color _colorTabMatching(int index) {
    return currentTab == index ? gb.baseColor : Colors.grey;
  }

  Widget _buildOffstageNavigator(int tabIndex) {
    return Offstage(
      offstage: currentTab != tabIndex,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tabIndex],
        tabItem: tabIndex,
      ),
    );
  }
}
