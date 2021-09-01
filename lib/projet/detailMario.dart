import 'package:flutter/material.dart';

class DetailMario extends StatefulWidget {
  @override
  _DetailMarioState createState() => _DetailMarioState();
}

class _DetailMarioState extends State<DetailMario> {
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
                    image: AssetImage('assets/mario.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('Super Mario Bros.', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Fantastique', style: Theme.of(context).textTheme.headline2,),
                Text('Avec : Bob Hoskins, John Leguizamo, Dennis Hopper', style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 1993', style: Theme.of(context).textTheme.headline2,),
                Text("Les frères Mario, Mario et Luigi, sont deux plombiers italo-américains de Brooklyn. Ils se retrouvent transportés dans une autre dimension où ils doivent affronter le roi Koopa, dictateur d'un peuple constitué de dinosaures ayant évolué en humains. Koopa a kidnappé Daisy, jeune paléontologue, qui détient une pierre possédant un pouvoir mystérieux.",style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
