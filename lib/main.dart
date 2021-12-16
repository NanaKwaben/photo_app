import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Photo App', home: HomeView());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(60),
            child: Text(
              'Experience Photgraphy In a new Dimension',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1527203561188-dae1bc1a417f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80'),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xfff077398),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return listView();
                }),
              );
            },
            child: Icon(Icons.keyboard_arrow_right)));
  }
}

class listView extends StatelessWidget {
  const listView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1494972308805-463bc619d34e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80')),
            Icon(Icons.menu, color: Colors.black),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Row(
            children: [
              Text(
                'Explore',
                style: TextStyle(fontSize: 25),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
          SizedBox(height: 12),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            color: Color(0xffECF0F4),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1455659817273-f96807779a8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                      height: 250,
                      width: MediaQuery.of(context).size.width),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Owusu'),
                        SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1444021465936-c6ca81d39b84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80'),
                                ),
                                SizedBox(width: 20),
                                Text('Hello'),
                              ],
                            ),
                            Icon(Icons.bookmark)
                          ],
                        )
                      ]),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            color: Color(0xffECF0F4),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1455659817273-f96807779a8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Owusu'),
                        SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1517497869-caaa5dacda85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80'),
                                ),
                                SizedBox(width: 20),
                                Text('Hello'),
                              ],
                            ),
                            Icon(Icons.bookmark)
                          ],
                        )
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:'Business',
      ),
       
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label:'Business',
      ),
     
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label:'Business',
      ),
      ],
      ),
    );
  }
}
