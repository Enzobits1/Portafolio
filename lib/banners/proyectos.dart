import 'package:flutter/material.dart';

class ProyectosBanner extends StatefulWidget {
  const ProyectosBanner({super.key});

  @override
  State<ProyectosBanner> createState() => _ProyectosBannerState();
}

class _ProyectosBannerState extends State<ProyectosBanner> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Ancho de pantalla
    bool isMobile = width < 600 ? true : false;

    return isMobile ? proyectMob() : proyectDesk();
  }
}

Container proyectDesk() {
  return Container(
    height: 500,
    color: const Color.fromARGB(87, 0, 0, 0),
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(height: 20),
        Text("Proyectos", style: TextStyle(fontSize: 32, color: Colors.white)),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: sizeProyectDesk("assets/pizzas_web.png")),
            SizedBox(width: 16),
            Expanded(flex: 1, child: sizeProyectDesk("assets/pizzas_web.png")),
            SizedBox(width: 16),
          ],
        ),
      ],
    ),
  );
}

Container sizeProyectDesk(String imagen) {
  return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), //ajusta el radio del proyecto
      border: Border.all(color: Colors.white), //
    ),
    child: Image.asset(imagen),
  );
}
//termina escritorio

Column proyectMob() {
  return Column(
    children: [
      Text(
        "Estudiante de Programacion enfocado al Desarrollo Web Frontend. Como Desarrollador busco crear proyectos que brinden la mejor experiencia para el usuario.",
        style: TextStyle(fontSize: 18, color: Colors.white70),
      ),
      Text("Proyectos", style: TextStyle(fontSize: 32, color: Colors.white)),
      Container(
        height: 500,
        width: double.infinity,
        color: const Color.fromARGB(87, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizeProyectMob(),
            SizedBox(height: 20),
            sizeProyectMob(),
            SizedBox(width: 16),
          ],
        ),
      ),
    ],
  );
}

Container sizeProyectMob() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ), //ajusta el radio del proyecto
      border: Border.all(color: Colors.white), //
    ),
    child: Image.asset("assets/pizzas_web.png", scale: 3.7),
  );
}
