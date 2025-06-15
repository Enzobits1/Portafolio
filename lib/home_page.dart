import 'package:flutter/material.dart';
import 'package:portafolio/banners/about_Me.dart';
import 'package:portafolio/banners/contacto.dart';
import 'package:portafolio/banners/github_Button.dart';
import 'package:portafolio/banners/habilidades.dart';
import 'package:portafolio/banners/linkedin_Button.dart';
import 'package:portafolio/banners/nav_Bar.dart';
import 'package:portafolio/banners/portada.dart';
import 'package:portafolio/banners/proyectos.dart';
import 'package:portafolio/banners/whatsapp_Button.dart';
import 'package:portafolio/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool obscuremode = false;

  // Bool para el icono oscuro o claro
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          obscuremode ? Colors.white70 : const Color.fromARGB(255, 20, 20, 20),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                PortadaBanner(),
                AboutmeBanner(),
                ProyectosBanner(),
                HabilidadesBanner(),
                SizedBox(height: 12),
                Contactobanner(),
                Footer(),
              ],
            ),
          ),
          Positioned(child: NavbarBanner()),
          Positioned(bottom: 50, right: 20, child: WhatsAppButton()),
          Positioned(bottom: 100, right: 20, child: GithubButton()),
          Positioned(bottom: 150, right: 20, child: LinkedinButton()),
        ],
      ),
    );
  }
}
