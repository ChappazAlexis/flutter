import 'package:flutter/material.dart';

class DetailKaamelott extends StatefulWidget {
  @override
  _DetailKaamelottState createState() => _DetailKaamelottState();
}

class _DetailKaamelottState extends State<DetailKaamelott> {
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
                    image: AssetImage('assets/kaamelott.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('Kaamelott – Premier volet', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Comedie/Aventure/Historique', style: Theme.of(context).textTheme.headline2,),
                Text('Avec : Alexandre Astier, Anne Girouard, Franck Pitiot', style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 2021', style: Theme.of(context).textTheme.headline2,),
                Text("Le tyrannique Lancelot-du-Lac et ses mercenaires saxons font régner la terreur sur le royaume de Logres. Les Dieux, insultés par cette cruelle dictature, provoquent le retour d'Arthur Pendragon et l'avènement de la résistance. Arthur parviendra-t-il à fédérer les clans rebelles, renverser son rival, reprendre Kaamelott et restaurer la paix sur l'île de Bretagne ?",style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
