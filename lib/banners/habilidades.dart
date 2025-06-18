import 'package:flutter/material.dart';

class HabilidadesBanner extends StatefulWidget {
  const HabilidadesBanner({super.key});

  @override
  State<HabilidadesBanner> createState() => _HabilidadesBannerState();
}

class _HabilidadesBannerState extends State<HabilidadesBanner> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Ancho de pantalla
    bool isMobile = width < 600 ? true : false;
    return isMobile ? habilidadesMob() : habilidadesDesk();
  }

  Container habilidadesDesk() => Container(
    height: 600,
    width: double.infinity,
    color: const Color.fromARGB(255, 20, 20, 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Habilidades",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        Column(
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                itemDesk("assets/c++.png", "C++"),
                SizedBox(width: 120),
                itemDesk("assets/canva.png", "Canva"),
                SizedBox(width: 120),
                itemDesk("assets/flutter.png", "Flutter"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                itemDesk("assets/git.png", "Git"),
                SizedBox(width: 120),
                itemDesk("assets/github.png", "Github"),
                SizedBox(width: 120),
                itemDesk("assets/dart.png", "Dart"),
              ],
            ),
          ],
        ),
      ],
    ),
  );

  Widget itemDesk(String path, String label) {
    return SizedBox(
      width: 150,
      child: Column(
        children: [
          Container(
            width: 160,
            height: 160,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(path),
          ),
          SizedBox(height: 8),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Column habilidadesMob() => Column(
    children: [
      SizedBox(height: 30),
      Text('Habilidades', style: TextStyle(fontSize: 28, color: Colors.white)),
      SizedBox(height: 20),
      Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          itemMob("assets/flutter.png", "Flutter"),
          itemMob("assets/dart.png", "Dart"),
          itemMob("assets/git.png", "Git"),
          itemMob("assets/github.png", "GitHub"),
          itemMob("assets/canva.png", "Canva"),
          itemMob("assets/c++.png", "C++"),
        ],
      ),
    ],
  );
}

Widget itemMob(String path, String label) {
  return SizedBox(
    width: 150, // ajustá este valor para controlar el tamaño
    child: Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFF1E293B),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(path),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    ),
  );
}
