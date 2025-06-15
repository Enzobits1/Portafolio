import 'package:flutter/material.dart';
import 'package:portafolio/globals/strings_info.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppButton extends StatefulWidget {
  const WhatsAppButton({super.key});

  @override
  State<WhatsAppButton> createState() => _WhatsAppButtonState();
}

class _WhatsAppButtonState extends State<WhatsAppButton> {
  void _launchWhatsApp() async {
    final Uri url = Uri.parse(wspUrlApp);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print("No se pudo abrir WhatsApp");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchWhatsApp,
        child: Container(
          width: 42,
          height: 42,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(wspIcon),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
