import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ) ,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text('Youtubeapp'),
          actions: <Widget>[
            SizedBox(
             width:44,
             child: FlatButton(
              child: Icon(Icons.search),
               onPressed: (){
                  //todo
               },
            ),
            ),
            SizedBox(
              width:44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  //todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child:Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                     child:Image.network(
                      'https://yt3.ggpht.com/a/AATXAJx2LQwh1kNX09biNyCenCNGzh5Rvwoue-an_Q=s176-c-k-c0xffffffff-no-rj-mo'
                     ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  Column(
                    children: <Widget>[


                    const Text(
                      'KboyのFlatter大学'
                    ),
                  FlatButton(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.video_call,
                             color:Colors.red,
                        ),
                        Text('登録する'),
                      ],
                    ),
                    onPressed: (){

                      },
                    ),
                    ],
                  ),
                  ],
                ),
              ),
             Expanded(
               child: Expanded(
                child: ListView.builder(
                 itemCount: items.length,
                 itemBuilder: (context, index) {
                 return ListTile(
                   contentPadding: EdgeInsets.all(8),
                   leading: Image.network('https://i.ytimg.com/vi/aA8w9Pa7GJU/maxresdefault.jpg'
                   ),
                  title: Column(
                    children: <Widget>[
                      Text(
                          'Flatter入門',
                      style: TextStyle(
                       fontWeight: FontWeight.w500
                      ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '267回再生',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            '5日前',
                            style: TextStyle(fontSize: 13),
                          ),

                        ],
                      ),
                    ],
                  ),
                   trailing: Icon(Icons.more_vert),
                 );
                },
                ),
               ),
             ),
            ],
          ),
        ),
      ),
    );

  }
}