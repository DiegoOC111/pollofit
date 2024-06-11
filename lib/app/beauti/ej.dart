import 'package:flutter/material.dart';

class ej extends StatefulWidget {
  @override
  _ejState createState() => _ejState();
}

class _ejState extends State<ej> {
  @override
  void initState() {
    super.initState();
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
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent, // Hace que el AppBar sea transparente para mostrar el degradado
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white, // Set icon color to white
            ),
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Mis Ejercicios',
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
            child: ListView.builder(
              itemCount: 5, // Número de cartas que quieres mostrar
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10.0),
                  color: Color(0xFF8689AC),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/images/mancuerna.png'),
                          backgroundColor: Color(0xFF8689AC),// Ruta de la imagen en assets
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nombre $index',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'Descripción del ejercicio $index. Aquí puedes poner una breve descripción.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


