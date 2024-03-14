import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App 타이틀',
        //앱의 전반적인 테마를 설정한다.
        theme: ThemeData(
          //텍스트의 style을 미리 설정하고 호출해 사용가능
          textTheme: TextTheme(
            bodyText1: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
            backgroundColor: Colors.green,
          ),
          body: Text('Body입니다'),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart),
                label: 'business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school_rounded),
                label: 'school',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.access_alarm),
            onPressed: () => {
              print('hello'),
            },
          ),
        ));
  }
}
