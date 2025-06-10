import 'package:flutter/material.dart';

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
    bool isMobile = width < 600 ? true : false;
    return isMobile ? portadaMob() : portadaDesk();
  }
}

SizedBox portadaMob() {
  return SizedBox(
    height: 500,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("assets/imagen_sin_fondo.png", scale: 4.0)),
        SizedBox(height: 5),
        Text("Hola!, Soy", style: TextStyle(fontSize: 32, color: Colors.white)),
        Text(
          "Enzo Saavedra Torres",
          style: TextStyle(
            fontSize: 42,
            color: const Color.fromARGB(190, 255, 255, 255),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            Uri.file(
              "https://drive.google.com/file/d/1IyDEe7h7aK8jW57DYJXrkEUOhz0cKaUw/view",
            );
          },
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text(
            "Descargar CV",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 100, 100, 100),
            ),
          ),
        ),
      ],
    ),
  );
}

SizedBox portadaDesk() {
  return SizedBox(
    height: 500,
    child: Container(
      color: const Color.fromARGB(87, 0, 0, 0),
      child: Row(
        children: [
          // Parte izquierda: Presentación
          Expanded(
            flex: 1,
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
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para descargar CV
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Text(
                          "DESCARGAR CV",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para abrir enlace de contacto
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(150, 160, 100, 80),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Text(
                          "CONTACTO",
                          style: TextStyle(fontSize: 14, color: Colors.white),
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
