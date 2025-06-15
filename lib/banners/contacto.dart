import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactobanner extends StatefulWidget {
  const Contactobanner({super.key});

  @override
  State<Contactobanner> createState() => _ContactobannerState();
}

class _ContactobannerState extends State<Contactobanner> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 600;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Contacto",
            style: TextStyle(fontSize: isMobile ? 28 : 36, color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            "¿Tenés un proyecto en mente? No dudes en escribirme o visitar mis redes.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 16 : 20,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _contactButton(
                icon: Icons.email,
                label: "Email",
                onTap: () => _launchUrl("https://enzost25@gmail.com"),
              ),
              _contactButton(
                icon: Icons.person_sharp,
                label: "GitHub",
                onTap: () => _launchUrl("https://github.com/Enzobits1"),
              ),
              _contactButton(
                icon: Icons.business_center_sharp,
                label: "LinkedIn",
                onTap:
                    () => _launchUrl(
                      "https://www.linkedin.com/in/enzo-saavedra-torres-9aa29b215/",
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _contactButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          color: Color(0xFF1E293B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'No se pudo abrir $url';
    }
  }
}
