import 'package:flutter/material.dart';

class DetailBac extends StatefulWidget {
  @override
  _DetailBacState createState() => _DetailBacState();
}

class _DetailBacState extends State<DetailBac> {
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
                    image: AssetImage('assets/bac.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('BAC Nord', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Drame/Thrommer', style: Theme.of(context).textTheme.headline2,),
                Text('Avec : Gilles Lellouche / Karim Leklou / François Civil', style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 2020', style: Theme.of(context).textTheme.headline2,),
                Text("Les quartiers Nord de Marseille détiennent un triste record : la zone au taux de criminalité le plus élevé de France. Poussée par sa hiérarchie, la BAC Nord, brigade de terrain, cherche sans cesse à améliorer ses résultats. Dans un secteur à haut risque, les policiers adaptent leurs méthodes, franchissant parfois la ligne jaune. Jusqu'au jour où le système judiciaire se retourne contre eux",style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
