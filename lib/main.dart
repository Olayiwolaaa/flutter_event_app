import 'package:flutter/material.dart';
import 'package:flutter_event_app/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.all(30.0),
      children: [
        //HEADER: Location and Image
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 180,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                  Text('Ha Noi, Viet Nom',
                      style: TextStyle(color: Colors.white))
                ]),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[500],
              backgroundImage: NetworkImage(
                  'https://cdn3d.iconscout.com/3d/premium/thumb/afro-avatar-6299534-5187866.png'),
            )
          ],
        ),
        const SizedBox(height: 30),

        //Date
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today\'s October 5th'),
            Text('Good Morning, Penguin!', style: kMulishBold),
          ],
        ),
        const SizedBox(height: 30),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              SizedBox(width: 15),
              Icon(
                Icons.search,
                size: 40,
                color: Colors.grey[500],
              ),
              SizedBox(width: 5),
              Text('Search by location or event', style: kMulishRegular)
            ],
          ),
        ),

        const SizedBox(height: 30),
        Text('Nearby Events', style: kMulishBold),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
              );
            },
          ),
        ),
      ],
    ));
  }
}
