import 'package:flutter/material.dart';

class Food {
  final String name;
  final String urlfood;

  const Food({
    required this.name,
    required this.urlfood,
  });
}



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Food> food = [
    Food(
      name: "Pizza",
      urlfood:
      "https://cdn3d.iconscout.com/3d/premium/thumb/pizza-slice-4706088-4020120.png?f=webp",
    ),
    Food(
      name: "HotDog",
      urlfood:
      "https://cdn3d.iconscout.com/3d/premium/thumb/hotdog-4706055-4020123.png?f=webp",
    ),
    Food(
      name: "Taco",
      urlfood:
      "https://cdn3d.iconscout.com/3d/premium/thumb/taco-4706092-4020117.png?f=webp",
    ),
    Food(
      name: "Donut",
      urlfood:
      "https://cdn3d.iconscout.com/3d/premium/thumb/donuts-4706053-4020125.png?f=png",
    ),
    Food(
      name: "French Fries",
      urlfood:
      "https://cdn3d.iconscout.com/3d/premium/thumb/french-fries-4706054-4020124.png?f=png",
    ),
    Food(
      name: "Ice Cream",
      urlfood:
      "https://cdn3d.iconscout.com/3d/premium/thumb/ice-cream-cone-4706056-4020122.png?f=webp",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Food App",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontFamily: 'jellee',
            ),
          ),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(food[index].urlfood),
              ),
              title: Text(
                food[index].name,
                style: TextStyle(fontFamily: 'jellee'),
              ),
              trailing: const Icon(Icons.arrow_forward),
              //onTap: (){
              //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodPage(food:food),
                //));
             // },
            ),
          ),
        ),
      ),
    );
  }
}
