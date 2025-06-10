import 'package:flutter/material.dart';

class NavbarBanner extends StatefulWidget {
  const NavbarBanner({super.key});

  @override
  State<NavbarBanner> createState() => _NavbarBannerState();
}

class _NavbarBannerState extends State<NavbarBanner> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Ancho de pantalla
    bool isMobile = width < 600 ? true : false;

    return isMobile
        //arrranca navbar mobile
        ? navBarMob()
        // termina navbar mobile
        //arranca navbar escritorio
        : navBarDesk();
  }
}

//EMPIEZA BARRA DE NAVEGACION MOBILE1
Container navBarMob() {
  return Container(
    color: Color.fromARGB(255, 32, 31, 31),
    width: double.infinity,
    height: 100,
    child: Row(
      children: [
        SizedBox(
          width: 200,
          child: Image.asset("assets/developer_logo.png", scale: 2.0),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueGrey,
          ),
          child: Expanded(
            child: Icon(Icons.menu, color: Colors.white, size: 30),
          ),
        ),
      ],
    ),
  );
}

//TERMINA BARRA DE NAVEGACION MOBILE1
//EMPIEZA BARRA DE NAVEGACION ESCRITORIO

Container navBarDesk() {
  return Container(
    color: const Color.fromARGB(255, 32, 31, 31),
    width: double.infinity,
    height: 100,
    child: Row(
      children: [
        Image.asset("assets/developer_logo.png", scale: 1.8),
        Spacer(),
        navBarItem("Home"),
        navBarItem("Sobre mí"),
        navBarItem("Habilidades"),
        navBarItem("Proyectos"),
        navBarItem("Contacto"),
        SizedBox(width: 20),
      ],
    ),
  );
}

// Helper para los botones del nav
Widget navBarItem(String title) {
  return TextButton(
    onPressed: () {
      if (title == "Home") {
        print("Home");
      } else if (title == "Sobre mí") {
        print("Sobre mí");
      } else if (title == "Habilidades") {
        print("Habilidades");
      } else if (title == "Proyectos") {
        print("Proyectos");
      }
    },
    child: Text(
      title,
      style: TextStyle(fontSize: 16, color: Colors.white, letterSpacing: 1.1),
    ),
  );
}

//TERMINA BARRA DE NAVEGACION ESCRITORIO
