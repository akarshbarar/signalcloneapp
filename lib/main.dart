import 'package:flutter/material.dart';
import 'package:signalclone/Chat.dart';
import 'package:signalclone/Setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
          "/setting":(context)=>Setting(),
          "/chat":(context)=>Chat()
          
      },
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: Text("Signal",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            actions: [
              Icon(Icons.search,color: Colors.black,),
              IconButton(icon: Icon(Icons.more_vert,color: Colors.black,), onPressed: () {  },)
            ],
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
                      child: CircleAvatar(
                        child: Text("A",
                                style: TextStyle(color:Colors.white),),
                        backgroundColor: Colors.purple,
                        radius: 1.0,
                        ),
                        onTap: ()=>{

                        },
                ),
  
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    //...
                  },
                  heroTag: null,
                ),
                SizedBox(
                  height: 10,
                ),
                FloatingActionButton( 
                  backgroundColor: Colors.blue[900],          
                  child: Icon(
                    Icons.edit
                  ),
                  onPressed: () => {},
                  heroTag: null,
                )
              ]
          ),
          body:Container(
            // height: 100.0,
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context,index){
                return Container(
                  child: ListTile(
                    leading: CircleAvatar(child: Image.network("https://gravatar.com/avatar/db92b2913ebf7a0e67001a5b5185bd81?s=400&d=robohash&r=x"),maxRadius:40 ,),
                    title: Text("Piyu",style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                    subtitle: Text("dkddkkkdkdk"),
                    hoverColor: Colors.red[200],
                    trailing: Column(
                      children: [
                        Text("Mon"),
                        Icon(Icons.check)
                      ],),
                      onTap: ()=>{
                        Navigator.of(context).pushNamed("/chat")
                      },
                  ),
                );
              }),
          )
        
          
        ),
      ),
    );
  }
}