import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Ancho de pantalla
    bool isMobile = width < 850 ? true : false;
    return isMobile ? footerMob() : footerDesk();
  }
}

Widget footerDesk() {
  return Container(
    height: 60,
    width: double.infinity,
    color: const Color.fromARGB(101, 46, 41, 41),
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Text(
      "© 2025 Enzo Saavedra Torres - Todos los derechos reservados",
      style: TextStyle(color: Colors.white70, fontSize: 12),
      textAlign: TextAlign.center,
    ),
  );
}

Widget footerMob() {
  return Container(
    height: 60,
    width: double.infinity,
    color: const Color.fromARGB(101, 46, 41, 41),
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Text(
      "© 2025 Enzo Saavedra Torres - Todos los derechos reservados",
      style: TextStyle(color: Colors.white70, fontSize: 12),
      textAlign: TextAlign.center,
    ),
  );
}
