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
      children: [
        SizedBox(height: 40.0),
        //HEADER: Location and Image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
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
        ),
        const SizedBox(height: 30),

        //Date
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today\'s October 5th'),
              Text('Good Morning, Penguin!', style: kMulishBold),
            ],
          ),
        ),

        const SizedBox(height: 30),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
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
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 20.0),
          child: Text('Nearby Events', style: kMulishBold),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                height: 200,
                width: 350,
                decoration: const BoxDecoration(
                  // color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Let\'s RocknRoll', style: kMulishBold),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ],
                  ),
                  Text('by William Jr.'),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 20.0),
          child: Text('Upcoming Events', style: kMulishBold),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: [
                    Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/festival_dancer.png')
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Festival Dancer', style: kMulishBold,),
                      Text('By Linkin Park', style: kMulishRegular,),
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Icon(Icons.access_time_rounded, color: Colors.grey[300], size: 20,),
                          SizedBox(width: 5.0,),
                          Text('October 21, 09:00 PM', style: kMulishRegular,)
                        ],
                      )
                    ],
                  )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
