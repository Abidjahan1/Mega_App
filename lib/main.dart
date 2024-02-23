// import 'dart:html';
import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  final int rand = Random().nextInt(10);
  @override
  Widget build(BuildContext context) {
    context.watch<MyAppState>();

    return Scaffold(
      body: ListView(
      padding: const EdgeInsets.only(top: 25,left: 0,right: 0,bottom: 0),

      children: <Widget>[
        //Header
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(226, 173, 89, 33),
            border: Border.all(width: 1,),
            borderRadius: BorderRadius.circular(7),
          ),
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 88, 69, 17),
                  border: Border.all(width: 1,),
                  borderRadius: BorderRadius.circular(7),),
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      //color: Colors.amber,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      //color: Colors.amber,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      //color: Colors.amber,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),

        //Body
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(2),
          height: 550,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 13, 231, 24),
              border: Border.all(width: 3, color: Color.fromARGB(255, 255, 222, 113)),
              borderRadius: BorderRadius.circular(12)),
          child: (Row(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 170, 145, 68),
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(10,),),
                height: 550,
                width: 120,
                margin: EdgeInsets.all(5),
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                        return Container(
                            height: 100,
                            width: 80,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 238, 216, 152),
                                border: Border.all(width: 5,color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(255, 0, 0, 0))),
                                    onPressed: () {},
                                    child: Column(
                                      children: <Widget>[
                                        Text('Dialog:$rand'),
                                        Text('Adverts: $rand'),
                                        Text('User: $rand'),
                                      ],
                                    )),
                              ],
                            ));
                        // TextButton(onPressed:(){

                        // },
                        // child: Text('Dialog $index'));

                        // return ListTile(
                        //   title: Text("Dialog $index"),
                        //   hoverColor: const Color.fromARGB(255, 88, 180, 226),
                        // );
                      },
                      childCount: 10,
                    ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 170, 145, 68),
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.circular(10,),),
                height: 546,
                width: 225,
                margin: EdgeInsets.only(left: 3, right: 3, top: 3, bottom: 3),
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                            height: 150,
                            width: 80,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.blue)),
                                    onPressed: () {},
                                    child: Column(
                                      children: <Widget>[
                                        Text('Location:$rand'),
                                        Text('$rand min ago'),
                                        Text('review'),
                                      ],
                                    )),
                              ],
                            ));

                        // return ListTile(
                        //   title: Text("Advert $index"),
                        //   hoverColor: const Color.fromARGB(255, 88, 180, 226),
                        // );
                      },
                      childCount: 50,
                    ))
                  ],
                ),
              )
            ],
          )),
        ),
        
        //Footer
        Container(
          padding: EdgeInsets.all(0),
          height: 100,
          margin: EdgeInsets.only(bottom: 7),
          decoration: BoxDecoration(
              border: Border.all(width: 3,),
              borderRadius: BorderRadius.circular(12)),
          child: 
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Column(
                  children: [
                    Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Button'),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Button'),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Button'),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Button'),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
