import 'package:dwm/drawer.dart';
import 'package:flutter/material.dart';
import 'detailShang.dart';
import 'detailBac.dart';
import 'detailForrest.dart';
import 'detailJungle.dart';
import 'detailKaamelott.dart';
import 'detailMario.dart';
import 'detailOss.dart';
import 'detailParrain.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;

  selectIcon(int selectIndex) {
    setState(() {
      index = selectIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.00),
        child: CustomDrawer(),
      ),
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //FILM 1
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailShang()),
                      );
                    },
                    child: new Container(
                      width: 300.00,
                      height: 300.00,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/shang.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),

                  Text(
                    'Shang-Chi et la Légende des Dix Anneaux',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Action/Aventure',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 2021',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),

                  //FILM 2
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailBac()),
                      );
                    },
                 child: new Container(
                    width: 300.00,
                    height: 300.00,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bac.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                  Text(
                    'BAC Nord',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Drame/Thriller',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 2020',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),

                  //FILM 3
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailForrest()),
                      );
                    },
                  child: new Container(
                    width: 300.00,
                    height: 300.00,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/forrest.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                  Text(
                    'Forrest Gump',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Comédie, Drame, Romance',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 1994',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),

                  //FILM 4
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailJungle()),
                      );
                    },
                  child: new Container(
                    width: 300.00,
                    height: 300.00,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/jungle.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                  Text(
                    'Jungle Cruise',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Aventure/Fantasy',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 2021',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),

                  //FILM 5
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailKaamelott()),
                      );
                    },
                  child: new Container(
                    width: 300.00,
                    height: 300.00,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/kaamelott.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                  Text(
                    'Kaamelott – Premier volet',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Comedie/Aventure/Historique',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 2021',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),

//FILM 6
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailMario()),
                      );
                    },
                  child: new Container(
                    width: 300.00,
                    height: 300.00,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mario.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                  Text(
                    'Super Mario Bros.',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Fantastique',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 1993',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),

                  //FILM 7
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailOss()),
                      );
                    },
                  child: new Container(
                    width: 300.00,
                    height: 300.00,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/oss.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                  Text(
                    'OSS 117 : Alerte rouge en Afrique noire',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Comédie, Espionnage, Aventure',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 2021',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),

                  //FILM 8
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailParrain()),
                      );
                    },
                  child: new Container(
                    width: 300.00,
                    height: 300.00,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/parrain.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                  Text(
                    'Le parrain',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Genre : Policier/Drame',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Sortie en 1972',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(''),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
