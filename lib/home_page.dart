import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



Widget categorisContainer({ required String image ,required String name}){
  return  Column(
    children: [
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage(image)),
            borderRadius: BorderRadius.circular(40)
                
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(name,style: TextStyle(color: Colors.white),)
    ],
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 380,
            decoration: BoxDecoration(
              color: Colors.indigo.shade600,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Arip!",
                    style: TextStyle(color: Colors.white30, fontSize: 17),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "You Received",
                    style: TextStyle(color: Colors.white54, fontSize: 25),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "48 Messages",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Row(
                    children: [
                      Text(
                        "Contact",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "List",
                        style: TextStyle(color: Colors.white30, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      categorisContainer(
                          image:  ' assets/images/test12.jpng',
                          name: 'htt'
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}