import 'package:flutter/material.dart';
import 'package:menudrawer/pages/catalogos.dart';
import 'package:menudrawer/pages/inicio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: myHome(),
    );
  }
}


class myHome extends StatelessWidget {
  const myHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child:
       ListView(
        padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
        children: <Widget>[DrawerHeader(
        child: Text(
          "opciones", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white)
          ,),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            image: DecorationImage(
            image: AssetImage('images/hola.jpg'), fit: BoxFit.fill
            )
            )
          ,),
          ListTile(
            title:  Text('Inicio',
           style: TextStyle(fontSize: 20.0),),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Inicio())));
            },
          ),
          ListTile(
            title: Text(
              'Catalogos',
              style: TextStyle(fontSize: 20.0),
            ),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Catalogos())));
            },
          ),
          ListTile(
            title: Text(
              'Feedback',
              style: TextStyle(fontSize: 20.0),
            ),
            leading: Icon(Icons.border_color),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Inicio())));
            },
          ),
          ListTile(
            title: Text(
              'Salir',
              style: TextStyle(fontSize: 20.0),
            ),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Inicio())));
            },
          )
          ],
          )
          ),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
} 