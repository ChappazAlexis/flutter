import 'package:flutter/material.dart';

class DetailShang extends StatefulWidget {
  @override
  _DetailShangState createState() => _DetailShangState();
}

class _DetailShangState extends State<DetailShang> {
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
                    image: AssetImage('assets/shang.png'),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                 )
                ],
              ),
                Text('Shang-Chi et la Légende des Dix Anneaux', style: Theme.of(context).textTheme.headline1,),
                Text('Genre : Action/Aventure', style: Theme.of(context).textTheme.headline2,),
                Text('Avec : Simu Liu, Tony Leung, Chiu-wai Awkwafina', style: Theme.of(context).textTheme.headline2,),
                Text('Sortie en 2021', style: Theme.of(context).textTheme.headline2,),
                Text('Shang-Chi, le maître Kung-fu, doit affronter son père, le Mandarin, leader du groupe terroriste des Dix Anneaux et percer le mystère de leur légende.',style: Theme.of(context).textTheme.headline3,)
            ],
          ),
        ),
      ),
    );
  }
}
