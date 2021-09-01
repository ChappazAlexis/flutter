import 'package:dwm/drawer.dart';
import 'detailParrain.dart';
import 'detailOss.dart';
import 'detailMario.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
      body: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: SingleChildScrollView(

       child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'User profile',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            // Permet d'avoir une ombre en-dessous
            Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                height: MediaQuery.of(context).size.height * .5,
                child: Column(
                  children: [
                    // Widget permettant de superposer les widget les uns sur les autres
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .15,
                          decoration: BoxDecoration(
                              // Permet de rajouter de l'arrondissement au niveau des angles du Container
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 80, left: 20),
                          // Créer un Widget avec des bordures arrondies
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym9va3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              radius: 45,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 130, left: 120),
                            // Créer un Widget avec des bordures arrondies
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Arnel Nukic',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('Lyon, France',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail),
                        SizedBox(
                          width: 30,
                        ),
                        Text('a.nukic@it-akademy.fr',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.work),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Etudiant IT Akademy',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Favorites',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailParrain()),
                      );
                    },
                    child: new Container(
                      width: 100.00,
                      height: 150.00,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/parrain.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailOss()),
                      );
                    },
                child: new Padding(
                  
                  padding: EdgeInsets.only(left: 8),
                    child: Container(
                    width: 100.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "/assets/oss.png"
                          ),
                        ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailMario()),
                      );
                    },
                child: new Padding(
                  padding: EdgeInsets.only(left: 8),
                    child: Container(
                    width: 100.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "/assets/mario.png"
                          ),
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
          ],
        ),
       ),
      ),
    );
  }
  
}
