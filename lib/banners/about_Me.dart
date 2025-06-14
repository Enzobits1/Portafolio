import 'package:flutter/material.dart';

class AboutmeBanner extends StatefulWidget {
  const AboutmeBanner({super.key});

  @override
  State<AboutmeBanner> createState() => _AboutmeBannerState();
}

class _AboutmeBannerState extends State<AboutmeBanner> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Ancho de pantalla
    bool isMobile = width < 600 ? true : false;
    return isMobile ? aboutMeMob() : aboutMeDesk();
  }
}

Widget aboutMeDesk() {
  return Container(
    height: 500,
    color: const Color.fromARGB(255, 20, 20, 20),
    padding: const EdgeInsets.symmetric(horizontal: 60),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Imagen ilustrativa
        Expanded(
          flex: 1,
          child: Image.asset("assets/imagen_sin_fondo.png", scale: 2.0),
        ),
        SizedBox(width: 60),
        // Texto
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Este queda exactamente como lo tenías
              Text(
                "Sobre mí",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              SizedBox(height: 12),
              Text(
                "Hola! Soy Enzo, actual desarrollador de C++ y Flutter, Estudiante de Programación enfocado al Desarrollo Web Frontend. Como Desarrollador busco crear proyectos que brinden la mejor experiencia para el usuario.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Soy una persona empática y entusiasta, con competencias enfocadas en el trabajo en equipo, comunicación asertiva, resolución de problemas, responsable y proactiva, me gusta aprender de los demás y superarme continuamente.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Column aboutMeMob() {
  return Column(
    children: [
      Text("Sobre mí", style: TextStyle(fontSize: 32, color: Colors.white)),
      SizedBox(height: 12),
      Text(
        "Hola! Soy Enzo, actual desarrollador de C++ y Flutter, Estudiante de Programación enfocado al Desarrollo Web Frontend. Como Desarrollador busco crear proyectos que brinden la mejor experiencia para el usuario.",
        style: TextStyle(fontSize: 18, color: Colors.white70, height: 1.5),
      ),
      SizedBox(height: 12),
      Text(
        "Soy una persona empática y entusiasta, con competencias enfocadas en el trabajo en equipo, comunicación asertiva, resolución de problemas, responsable y proactiva, me gusta aprender de los demás y superarme continuamente.",
        style: TextStyle(fontSize: 18, color: Colors.white70, height: 1.5),
      ),
      SizedBox(height: 12),
    ],
  );
}
