import 'package:flutter/material.dart';
import 'package:portafolio/globals/strings_info.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubButton extends StatefulWidget {
  const GithubButton({super.key});

  @override
  State<GithubButton> createState() => _GithubButtonState();
}

class _GithubButtonState extends State<GithubButton> {
  void _launchGithub() async {
    final Uri url = Uri.parse(githubUrlApp);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print("No se pudo abrir GitHub");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchGithub,
        child: Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(githubIcon),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
