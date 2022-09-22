import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeworkOne extends StatefulWidget {
  const HomeworkOne({Key? key}) : super(key: key);

  @override
  State<HomeworkOne> createState() => _HomeworkOneState();
}

class _HomeworkOneState extends State<HomeworkOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       appBar: AppBar(
         centerTitle: true,
         title: const Text('vazifa1', style: TextStyle(color: Colors.white),),
       ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pink,
              Colors.blue,
              //Colors.blue,
              Colors.green,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(child: Text('welcome').tr())),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Expanded(child: ColoredBox(
                    color: Colors.green,
                    child: TextButton(
                    onPressed: (){
                      context.setLocale(Locale('en','US'));
                    },
                    child: Text('English',style: TextStyle(color: Colors.white),),
                    ),
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: ColoredBox(
                    color: Colors.red,
                    child: TextButton(
                      onPressed: (){
                        context.setLocale(Locale('ru','RU'));
                      },
                      child: Text('Russian',style: TextStyle(color: Colors.white),),
                    ),
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: ColoredBox(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: (){
                        context.setLocale(Locale('uz','UZ'));
                      },
                      child: Text('Uzbek',style: TextStyle(color: Colors.white),),
                    ),
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: ColoredBox(
                    color: Colors.orange,
                    child: TextButton(
                      onPressed: (){
                        context.setLocale(Locale('fr','FR'));
                      },
                      child: Text('French',style: TextStyle(color: Colors.white),),
                    ),
                  )),
                  SizedBox(width: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
