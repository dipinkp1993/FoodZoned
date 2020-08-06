import 'package:flutter/material.dart';
import '../pages/filter_page.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String titleName, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        titleName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(25),
            alignment: Alignment.centerLeft,
            color: Colors.purple,
            child: Text(
              'Side Menu',
              style: TextStyle(
                color: Theme.of(context).canvasColor,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Meals', Icons.restaurant_menu, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Filter Settings', Icons.settings_applications, () {
            Navigator.of(context).pushReplacementNamed(FilterPage.routeName);
          }),
        ],
      ),
    );
  }
}
