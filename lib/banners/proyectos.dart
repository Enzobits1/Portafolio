import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      const SizedBox(height: 30),
      const Text(
        'Proyectos',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 20),
      projectItem(
        "Portafolio",
        "assets/portafolio_web.png",
        "https://portafolio-iota-seven-83.vercel.app/",
      ),
      const SizedBox(height: 20),
      projectItem(
        "Web Pizza",
        "assets/pizzas_web.png",
        "https://pizzas-web.vercel.app/",
      ),
    ],
  );
}

Widget projectItem(String title, String imagePath, String url) {
  return InkWell(
    onTap: () async {
      if (await canLaunchUrl(Uri.parse(url))) {
        launchUrl(Uri.parse(url));
      }
    },
    child: Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ],
      ),
    ),
  );
}
