import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

// atalho stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

//atalho stless
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void incremento () { print('incremento');}
   void decremento () { print('decremento');}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/img/monsterHigh.jpg')),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pode Entrar',
            style: TextStyle(
              fontSize: 26.0,
              color: const Color.fromARGB(255, 255, 185, 255),
              fontWeight: FontWeight.w700,
            ),
          ),
          Text('0',
             style: TextStyle(
              fontSize: 26.0,
              color: const Color.fromARGB(255, 235, 143, 205),
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextButton(onPressed:decremento,
                  style:  TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 243, 33, 121),
                    fixedSize: const Size(100,100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text('Sair',
                    style:TextStyle(
                      color:Colors.black,
                      fontSize: 16,
                    )
                  ),
                ),
                 
              TextButton(onPressed: incremento,
                style:  TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 212, 33, 243),
                    fixedSize: const Size(100,100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                ),
                child: Text('Entrar',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize: 16,
                  )
                ),
              ),

            ],

          )
        ],
      ),
      )
    );
  }
}

