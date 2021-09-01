import 'package:flutter/material.dart';

class DetailParrain extends StatefulWidget {
  @override
  _DetailParrainState createState() => _DetailParrainState();
}

class _DetailParrainState extends State<DetailParrain> {
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
                    image: AssetImage('assets/parrain.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('Le parrain', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Policier/Drame', style: Theme.of(context).textTheme.headline2,),
                Text('Avec : Marlon Brando, Al Pacino, James Caan', style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 1972', style: Theme.of(context).textTheme.headline2,),
                Text('En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone marie sa fille à un bookmaker. Sollozzo, "parrain" de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue.',style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
