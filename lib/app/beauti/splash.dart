import 'package:flutter/material.dart';
import 'package:gallofit/app/beauti/com.dart';
import 'package:gallofit/app/beauti/ej.dart';
import 'package:gallofit/app/beauti/home.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Aquí puedes agregar la lógica para el splash screen, como una navegación después de un retraso.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFa2bee5), // Color de fondo de la pantalla
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF101116),
                Color(0xFF2F3148),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent, // Hace que el AppBar sea transparente para mostrar el degradado
            elevation: 0,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'My FIT',
                style: TextStyle(
                  color: Colors.white, // Color del texto
                  fontSize: 40.0, // Tamaño del texto
                  fontWeight: FontWeight.bold, // Peso de la fuente
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF2F3148),
                  Color(0xFF587099),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(height: 20), // Espacio entre el texto y el nuevo texto que agregaremos
                  Text(
                    'Alumnos totales: 100', // Cambia el número según tus necesidades
                    style: TextStyle(
                      color: Colors.white, // Color del texto
                      fontSize: 20.0, // Tamaño del texto
                      fontWeight: FontWeight.normal, // Peso de la fuente
                    ),
                  ),
                  Text(
                    'Alumnos en línea: 50', // Cambia el número según tus necesidades
                    style: TextStyle(
                      color: Colors.white, // Color del texto
                      fontSize: 20.0, // Tamaño del texto
                      fontWeight: FontWeight.normal, // Peso de la fuente
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Color(0xFF101116).withOpacity(0.3), // Color del container con transparencia
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Código que se ejecuta al presionar el botón
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => com()),
                      );
                    },
                    child: Text('Banco de alimentos',
                      style: TextStyle(
                        color: Colors.white, // Color del texto

                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Color(0xFF8689AC); // Color cuando está presionado
                        }
                        return Color(0xFF587099); // Color cuando no está presionado
                      }),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {

                      // Código que se ejecuta al presionar el botón
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ej()),
                      );
                    },
                    child: Text('Banco de Ejercicios',
                      style: TextStyle(
                      color: Colors.white, // Color del texto

                    ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Color(0xFF8689AC); // Color cuando está presionado
                        }
                        return Color(0xFF587099); // Color cuando no está presionado
                      }),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Alum()),
                      );
                      // Código que se ejecuta al presionar el botón
                    },
                    child: Text('Mis Alumnos',
                      style: TextStyle(
                        color: Colors.white, // Color del texto

                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Color(0xFF8689AC); // Color cuando está presionado
                        }
                        return Color(0xFF587099); // Color cuando no está presionado
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}