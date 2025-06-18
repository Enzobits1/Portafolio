import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortadaBanner extends StatefulWidget {
  const PortadaBanner({super.key});

  @override
  State<PortadaBanner> createState() => _PortadaBannerState();
}

class _PortadaBannerState extends State<PortadaBanner> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Ancho de pantalla
    bool isMobile = width < 850 ? true : false;
    return isMobile ? portadaMob() : portadaDesk();
  }
}

SizedBox portadaMob() {
  return SizedBox(
    height: 700,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("assets/imagen_sin_fondo.png", scale: 4.0)),
        SizedBox(height: 20),
        Text("Hola!, Soy", style: TextStyle(fontSize: 32, color: Colors.white)),
        Text(
          "Enzo Saavedra Torres",
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(190, 255, 255, 255),
          ),
        ),
        SizedBox(height: 20),
        OutlinedButton(
          onPressed: () async {
            final url =
                'https://drive.google.com/file/d/1IyDEe7h7aK8jW57DYJXrkEUOhz0cKaUw/view';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(
                Uri.parse(url),
                mode: LaunchMode.externalApplication,
              );
            } else {
              throw 'No se pudo abrir el CV';
            }
          },
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.white70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: Text(
            "Descargar CV",
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
        ),
      ],
    ),
  );
}

SizedBox portadaDesk() {
  return SizedBox(
    height: 900,
    child: Container(
      //usar pading para el texto.
      color: const Color.fromARGB(87, 0, 0, 0),
      child: Row(
        children: [
          Expanded(
            flex: 70,
            child: SizedBox(
              width: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hola! Soy",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Enzo Saavedra Torres",
                    style: TextStyle(
                      fontSize: 48,
                      color: Color.fromARGB(190, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "DESARROLLADOR WEB FRONTEND",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1.5,
                      color: Colors.white60,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Estudiante de Programación enfocado al Desarrollo Web Frontend."
                    "Como desarrollador busco crear proyectos que brinden la mejor experiencia para el usuario.",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () async {
                          final url =
                              'https://drive.google.com/file/d/1IyDEe7h7aK8jW57DYJXrkEUOhz0cKaUw/view';
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(
                              Uri.parse(url),
                              mode: LaunchMode.externalApplication,
                            );
                          } else {
                            throw 'No se pudo abrir el CV';
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                        child: Text(
                          "Descargar CV",
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                      ),
                      SizedBox(width: 16),
                      OutlinedButton(
                        onPressed: () async {
                          final url =
                              ""; //CREAR ANIMACION PARA DESLIZAR A LA SECCIÓN CONTACTO- PENDIENTE
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(
                              Uri.parse(url),
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                        child: Text(
                          "Contacto",
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Parte derecha: Imagen
          Container(
            width: 400,
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "assets/imagen_sin_fondo.png",
              scale: 1.5,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    ),
  );
}
