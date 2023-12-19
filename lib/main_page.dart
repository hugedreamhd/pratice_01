//파일을 나누는 이유 - 관리의 용이함때문이다!!
//
// Ctil + F = 검색해서 위치 찾기
// Ctrl + B = 변수가 사용되는 것 찾기 <-> 반대로도 찾기
// Ctrl + E = 최근에 사용한 명령어등
//
// Ctil + alt + \ = hot reload
// Ctil + alt + shift + \ = hot restart
//inspector 정보를 통해 앱내 위젯 설정등을 볼수 있다
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 100),
              Container(height: 30),
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
              TextField(
                decoration: InputDecoration(
                  labelText: '글자', //여기
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  print(text);
                },
              ),
              Image.network(
                'https://previews.123rf.com/images/sternfahrer/sternfahrer2304/sternfahrer230400828/202544978-%EB%A9%8B%EC%A7%84-%EB%B0%B0%EA%B2%BD%ED%99%94%EB%A9%B4%EC%97%90%EC%84%9C-%EC%98%81%EA%B0%90%EC%9D%84-%EB%B0%9B%EC%9D%80-%EB%B8%94%EB%9E%99%ED%99%80-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8%EB%A0%88%EC%9D%B4%EC%85%98-%ED%8C%90%ED%83%80%EC%A7%80-%EC%8A%A4%ED%83%80%EC%9D%BC-ai-%EC%83%9D%EC%84%B1.jpg',
                width: 200,
                height: 100,
                fit: BoxFit.fill,
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                      'assets/img/cat.jpg',
                    width: 200,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
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
