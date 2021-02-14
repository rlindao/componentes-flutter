import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Avatar Page'),
            actions: [

              Container(
                padding: EdgeInsets.all(5.0),
                child: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.plymouth.edu/theclock/wp-content/uploads/sites/183/2019/03/stan-lee.png'),
                    radius: 25.0,
                ),
              ),


              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  child: Text('SL'),
                  backgroundColor: Colors.brown,
                ),
              )
            ],
        ),

        body: Center(
            child: FadeInImage(
              image: NetworkImage('https://www.plymouth.edu/theclock/wp-content/uploads/sites/183/2019/03/stan-lee.png'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
            ),
        ),
    );
  }
}