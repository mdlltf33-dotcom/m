import 'package:flutter/material.dart';
import 'sq.dart';
class Homepage extends StatefulWidget {




  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

DBHelper databasew = DBHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("data"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

           ElevatedButton(
                
              onPressed: () async{  


             List<Map> response = await databasew.readData("SELECT * FROM 'nots'");
print(response);
              },

              child: Text("get data"),),
         

SizedBox(height: 30,) ,

          ElevatedButton(
                      onPressed: () async{ 




                  int response = await databasew.insertData("INSERT INTO nots(not) VALUES('king')");
                print(response);

                       },
                      child: Text("add data"),),
        



        ],
      ),
    );
  }
}