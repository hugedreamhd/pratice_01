//파일을 나누는 이유 - 관리의 용이함때문이다!!

import 'package:flutter/material.dart';

// Camel Case (낙타형) - 클래스는 무조건 (단어마다 맨 앞자만 대문자)
// snake_case (뱀형) - 파일 이름은 암묵적인 소문자
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //변수는 항상 소문자로 시작
  int number = 0;

  @override
  //메서드도 항상 소문자로 시작
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$number',
              style: TextStyle(
                color: Colors.red,
                fontSize: 70,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton');
              },
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {
                print('TextButton');
              },
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //화면 갱신
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    ); //요기까지 문장끝
  }
}
