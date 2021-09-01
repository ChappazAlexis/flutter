import 'package:flutter/material.dart';

class DetailJungle extends StatefulWidget {
  @override
  _DetailJungleState createState() => _DetailJungleState();
}

class _DetailJungleState extends State<DetailJungle> {
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
        child: AppBar(),
      ),
      body: SafeArea(
        // Permet de mettre sur une ligne
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            // Dans une Row, permet d'aligner horizontalement le widget
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                    width: 300.00,
                    height: 300.00,
                    decoration:  BoxDecoration(
                    image:  DecorationImage(
                    image: AssetImage('assets/jungle.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('Jungle Cruise', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Aventure/Fantasy', style: Theme.of(context).textTheme.headline2,),
                Text('Avec : Dwayne Johnson, Emily Blunt, Jack Whitehall', style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 2021', style: Theme.of(context).textTheme.headline2,),
                Text("En 1556, Lope de Aguirre et des Conquistadors partent en Amazonie à la recherche d'un arbre légendaire magique dont les pétales pourraient guérir toutes les maladies. Après le massacre de la tribu des Puka Michuna, une terrible malédiction s'abat sur eux.",style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
