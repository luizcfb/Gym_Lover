import 'package:flutter/material.dart';
import 'package:gym_lover/views/treinos.dart';

class PersonalNavigationBar extends StatefulWidget {
  const PersonalNavigationBar({Key? key}) : super(key: key);

  @override
  _PersonalNavigationBarState createState() => _PersonalNavigationBarState();
}

class _PersonalNavigationBarState extends State<PersonalNavigationBar> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    redirect();
  }

  void redirect() {
    switch (_selectedIndex) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => treinos_screen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => treinos_screen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => treinos_screen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => treinos_screen()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => treinos_screen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Treino',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insights),
          label: 'Estatistica',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundImage: NetworkImage(
              "",
            ),
            radius: 15,
            backgroundColor: Color(0xFFc81e24),
          ),
          label: 'Perfil',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFc81e24),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
    );
  }
}
