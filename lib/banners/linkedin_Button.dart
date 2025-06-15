import 'package:flutter/material.dart';
import 'package:portafolio/globals/strings_info.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedinButton extends StatefulWidget {
  const LinkedinButton({super.key});

  @override
  State<LinkedinButton> createState() => _LinkedinButtonState();
}

class _LinkedinButtonState extends State<LinkedinButton> {
  void _launchLinkedin() async {
    final Uri url = Uri.parse(linkedinUrlApp);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print("No se pudo abrir LinkedIn");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchLinkedin,
        child: Container(
          width: 42,
          height: 42,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(linkedinIcon),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
