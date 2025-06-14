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
                itemHabilidades("assets/c++.png", "C++"),
                SizedBox(width: 120),
                itemHabilidades("assets/canva.png", "Canva"),
                SizedBox(width: 120),
                itemHabilidades("assets/flutter.png", "Flutter"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                itemHabilidades("assets/git.png", "Git"),
                SizedBox(width: 120),
                itemHabilidades("assets/github.png", "Github"),
                SizedBox(width: 120),
                itemHabilidades("assets/dart.png", "Dart"),
              ],
            ),
          ],
        ),
      ],
    ),
  );

  Container itemHabilidades(String imagen, String texto) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(150, 150)),
        border: Border.all(color: const Color.fromARGB(153, 255, 242, 242)),
      ),
      child: Image.asset(imagen),
    );
  }

  Column habilidadesMob() => Column(
    children: [
      const SizedBox(height: 30),
      const Text(
        'Habilidades',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 20),
      Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          skillItem("assets/flutter.png", "Flutter"),
          skillItem("assets/dart.png", "Dart"),
          skillItem("assets/git.png", "Git"),
          skillItem("assets/github.png", "GitHub"),
          skillItem("assets/canva.png", "Canva"),
          skillItem("assets/cpp.png", "C++"),
        ],
      ),
    ],
  );
}

Widget skillItem(String path, String label) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
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
  );
}
