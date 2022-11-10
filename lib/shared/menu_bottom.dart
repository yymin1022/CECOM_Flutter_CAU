import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key? key,
    }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/first');
              break;
            case 2:
              Navigator.pushNamed(context, '/second');
              break;
            case 3:
              Navigator.pushNamed(context, '/third');
              break;
            case 4:
              Navigator.pushNamed(context, '/fourth');
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "박상우"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "박지우"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "신지연"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "장민석"),
        ],
    );
  }
}