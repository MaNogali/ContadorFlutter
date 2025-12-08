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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//atalho stless
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   int contador = 0;

  void incremento ()
   { 
    setState(() {
      contador++;
    });
    print('incremento');
    }
   
   void decremento () 
   {
    setState(() {
      contador--;
    });
     print('contador');
     }

   bool get isEmpty => contador == 0;
   bool get isFull => contador == 10;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/monsterHigh.jpg'),),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? 'Lotado' : 'Pode Entrar!',
            style: TextStyle(
              fontSize: 26.0,
              color: isFull ? Colors.red : Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w700,
            ),
          ),

          Padding(padding: EdgeInsets.all(40),
          child: Text(
             contador.toString(),
             style: TextStyle(
              fontSize: 55,
              color: isFull ? Colors.red : Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w700,
            ),
          ), 
          ),
         

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextButton(
                  onPressed: isEmpty ? null : decremento,
                  style:  TextButton.styleFrom(
                    backgroundColor: isEmpty ? Color.fromARGB(255, 72, 40, 187).withOpacity(0.2) : Color.fromARGB(255, 72, 40, 187),
                    fixedSize: const Size(100,100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),


                  child: Text('Saiu',
                    style:TextStyle(
                      color:Colors.black,
                      fontSize: 16,
                     
                    )
                  ),
                ),
                 SizedBox(width: 32),
                  
              TextButton(
                onPressed: isFull ? null : incremento,

                style:  TextButton.styleFrom(
                    backgroundColor: isFull ? const Color.fromARGB(255, 72, 40, 187).withOpacity(0.2) : const Color.fromARGB(255, 72, 40, 187),
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


