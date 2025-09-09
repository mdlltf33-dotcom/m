import 'package:flutter/material.dart';

class singup extends StatelessWidget {
  singup({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Positioned(
              Container(
                height: 250,
                width: width,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("aset/st.png"),
                    fit: BoxFit.fill,
                    // ),
                  ),
                ),
              ),

              Text(
                "Hello",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),

              SizedBox(height: 20),


              
                 Container(
                width: 300,
                height: 45,
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter name",
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.playlist_add_check_circle_outlined,
                      color: const Color.fromRGBO(83, 70, 244, 1),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),

               SizedBox(height: 20),


              Container(
                width: 300,
                height: 45,
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter email",
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: const Color.fromRGBO(83, 70, 244, 1),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),


              SizedBox(height: 20),

                 Container(
                width: 300,
                height: 45,
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter password",
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: const Color.fromRGBO(83, 70, 244, 1),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),

               SizedBox(height: 20),




            Container(
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigo,
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Text("enter",style: 
                TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
            ),

          SizedBox(height: 20,),

              Container(
              width: 300,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("singup with google",style: 
                    TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),

                     Container(
                      height: 20,
                      width: 20,
                      padding: EdgeInsets.only(left: 5),
                      child: Image.asset("aset/google.png")),

                  ],
                ),
                ),
            ),




            SizedBox(height: 20,),

              Container(
              width: 300,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:  Colors.black,
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("singup with facebock",style: 
                    TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),

                    Container(
                      height: 20,
                      width: 20,
                      padding: EdgeInsets.only(left: 5),
                      child: Image.asset("aset/facebock.png")),
                  ],
                ),
                ),
            ),


          Container(
                height: 150,
                width: width,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("aset/str.png"),
                    fit: BoxFit.fill,
                    // ),
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
