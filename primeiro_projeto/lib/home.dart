import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra - Papel - Tesoura", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,

        ),),
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 50),
            Image.asset('images/padrao.png'),
            Text("Escolha do APP", style:
              TextStyle(
              fontSize: 30,
                fontWeight: FontWeight.bold,
              )),

            SizedBox(height: 100,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,'/resultado',arguments: {"escolhaDoUsuario" : 0});
                  },
                  child: Image.asset("images/pedra.png",width: 80),
                ),



                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,'/resultado',arguments: {"escolhaDoUsuario" : 1});
                  },
                  child: Image.asset("images/papel.png",width: 80),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,'/resultado',arguments: {"escolhaDoUsuario" : 2});
                  },
                  child: Image.asset("images/tesoura.png",width: 80),
                ),

              ],
            )
          ],
        ),
      ),


    );
  }
}