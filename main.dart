import 'package:flutter/material.dart';

void main(){
  runApp( MyApp() );

}

class MyApp extends StatelessWidget{
  const MyApp ({ Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("E-Med: Emergency Medical Services"),

        ),
        body:  
        Container(

          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          color: Colors.green,
          height: 900,
          width: 900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>
          [
              Text("Emergency Delivery Service🏥",style: TextStyle(fontSize: 20)),
              Text("Normal Delivery Service🚚",style: TextStyle(fontSize: 20)),
              Text("First Aid🩹",style: TextStyle(fontSize: 20))

            ])

        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: (){
          print("Pressed!");
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Medical Services',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.help),
                label: 'Help'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle) ,
              label: 'Account',
            ),

          ],
        ),
      ),

    );
  }
}
