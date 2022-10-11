import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 11 ,top: 20),
        child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.grey[500],),onPressed:(){
          Navigator.pop(context);
        },),
      ),),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                color: Colors.white,
                width: 370,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                        ),],),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(right: 290),
                        child: Text("Name",style: TextStyle(color: Colors.grey),),
                      ),
                      Container(
                        width: 340,
                        child: TextFormField(

                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(right: 290),
                        child: Text("Email",style: TextStyle(color: Colors.grey),),
                      ),
                      Container(
                        width: 340,
                        child: TextFormField(

                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(right: 270),
                        child: Text("Password",style: TextStyle(color: Colors.grey),),
                      ),
                      Container(
                        width: 340,
                        child: TextFormField(

                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                          width: 330,height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)
                            ,color: Colors.green,
                          ),
                          child: MaterialButton(onPressed: (){},child: Text("SIGN IN",style: TextStyle(color: Colors.white,),),))
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}