import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/shared/stores/auth_store.dart';

class NavbarBottom extends StatefulWidget {
  const NavbarBottom({Key? key}) : super(key: key);

  @override
  State<NavbarBottom> createState() => _NavbarBottomState();
}

class _NavbarBottomState extends State<NavbarBottom> {
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
        Modular.to.pushNamed("/app/treinos/");
        break;
      case 1:
        Modular.to.pushNamed("/app/estatistica/");
        break;
      case 2:
        Modular.to.pushNamed("/app/home/");
        break;
      case 3:
        Modular.to.pushNamed("/app/chat/");
        break;
      case 4:
        Modular.to.pushNamed("/app/perfil/");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RouterOutlet(),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
                "${Modular.get<AuthStore>().user?.photoURL.toString()}",
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
      ),
    );
  }
}
