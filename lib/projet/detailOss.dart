import 'package:flutter/material.dart';

class DetailOss extends StatefulWidget {
  @override
  _DetailOssState createState() => _DetailOssState();
}

class _DetailOssState extends State<DetailOss> {
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
                    image: AssetImage('assets/oss.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('OSS 117 : Alerte rouge en Afrique noire', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Comédie, Espionnage, Aventure', style: Theme.of(context).textTheme.headline2,),
                Text("Avec : Jean Dujardin, Pierre Niney, Fatou N'Diaye", style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 2021', style: Theme.of(context).textTheme.headline2,),
                Text("En 1981, Hubert Bonisseur de La Bath se rend en Afrique de l'Est, au Kenya, pour aider le dirigeant à mater des rebelles dans le cadre de la Françafrique. Pour cette nouvelle mission, plus délicate, plus périlleuse et plus torride que jamais, il est contraint de faire équipe avec un jeune collègue, le prometteur OSS 1001.",style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
