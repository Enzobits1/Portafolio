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
    bool isMobile = width < 600 ? true : false;
    return isMobile ? footerMob() : footerDesk();
  }

  Widget footerDesk() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "© 2025 Enzo Saavedra Torres - Todos los derechos reservados",
        style: TextStyle(color: Colors.white70, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}

Widget footerMob() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Text(
      "© 2025 Enzo Saavedra Torres - Todos los derechos reservados",
      style: TextStyle(color: Colors.white70, fontSize: 12),
      textAlign: TextAlign.center,
    ),
  );
}
