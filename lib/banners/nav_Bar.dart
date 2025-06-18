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
    bool isMobile = width < 850 ? true : false;

    return isMobile
        //arrranca navbar mobile
        ? navBarMob(context)
        // termina navbar mobile
        //arranca navbar escritorio
        : navBarDesk();
  }
}

//EMPIEZA BARRA DE NAVEGACION MOBILE1
Container navBarMob(BuildContext context) {
  return Container(
    color: Colors.transparent,
    width: double.infinity,
    height: 100,
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Logo a la izquierda
        Image.asset("assets/developer_logo.png", scale: 1.8),
        // Botón de menú
        Builder(
          builder: (BuildContext builderContext) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white, size: 32),
              onPressed: () {
                showDialog(
                  context: builderContext,
                  barrierColor: Colors.black54,
                  builder: (BuildContext dialogContext) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF181818),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.close, color: Colors.white),
                                onPressed: () {
                                  Navigator.of(dialogContext).pop();
                                },
                              ),
                            ),
                            SizedBox(height: 40),
                            navItem("Home"),
                            SizedBox(height: 20),
                            navItem("Sobre mí"),
                            SizedBox(height: 20),
                            navItem("Proyectos"),
                            SizedBox(height: 20),
                            navItem("Contacto"),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ],
    ),
  );
}

Widget navItem(String title) {
  return GestureDetector(
    onTap: () {
      // Aquí agregás el scroll a las secciones
    },
    child: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
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

// Botones del navBarDesk
Widget navBarItem(String title) {
  return TextButton(
    onPressed: () {},
    child: Text(
      title,
      style: TextStyle(fontSize: 16, color: Colors.white, letterSpacing: 1.1),
    ),
  );
}

//TERMINA BARRA DE NAVEGACION ESCRITORIO
