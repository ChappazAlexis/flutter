import 'package:dwm/projet/homepage.dart';
import 'package:flutter/material.dart';
import 'projet/profil.dart';



class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  selectIcon(int selectIndex) {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'assets/assets/movie.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Movie app',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ],
            ),
          ),
          
          ListTile(
            title: Text('Accueil'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
            ListTile(
            title: Text('Profil'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 300, left: 20),
                child: Text("Sign Out"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
