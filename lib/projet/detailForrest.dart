import 'package:flutter/material.dart';

class DetailForrest extends StatefulWidget {
  @override
  _DetailForrestState createState() => _DetailForrestState();
}

class _DetailForrestState extends State<DetailForrest> {
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
                    image: AssetImage('assets/forrest.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('Forrest Gump', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Comédie, Drame, Romance', style: Theme.of(context).textTheme.headline2,),
                Text('Avec : Tom Hanks, Gary Sinise, Robin Wright', style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 1994', style: Theme.of(context).textTheme.headline2,),
                Text("Quelques décennies d'histoire américaine, des années 1940 à la fin du XXème siècle, à travers le regard et l'étrange odyssée d'un homme simple et pur, Forrest Gump.",style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
