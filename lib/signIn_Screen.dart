import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_screen/SignUp_screen.dart';

class signIn extends StatefulWidget{
  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                color: Colors.white,
                width: 370,
                height: 430,
                child: Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Column(
                    children: [
                      Row(
                        children: [Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("Welcome,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                        ),
                        SizedBox(width: 130,),TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context) => signUp() ,));
                              }, child: Text("Sign",style: TextStyle(color: Colors.green,fontSize: 17),))],),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(right: 215),
                        child: Text("Sign in to Continue",style: TextStyle(fontSize: 13,color: Colors.grey),),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(right: 290),
                        child: Text("Email",style: TextStyle(color: Colors.grey),),
                      ),
                      Container(
                        width: 340,
                        child: TextFormField(

                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.only(right: 270),
                        child: Text("Password",style: TextStyle(color: Colors.grey),),
                      ),
                      Container(
                        width: 340,
                        child: TextFormField(

                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(color: Colors.grey[500]),)),
                      )
                      ,
                      SizedBox(height: 15,),
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
            SizedBox(height: 50,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Text("-OR-",style: TextStyle(fontSize: 20),),
  ],
),
            SizedBox(height: 70,),
            Container(
              width: 360,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3))
                    ,
              ),
                child: MaterialButton(


                  onPressed: (){},child: Row(children: [
                  Container(
                    width: 35,height: 35,

                      child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlp19XMhnt6d1qSgVIe-LR88kxWMOZ3bFO2Qkup4DNf19abOEugvxt7Qa52B9d56peVG8&usqp=CAU",),)),
                  SizedBox(width: 50,),
                  Text("Sign in with Facebook",style: TextStyle(color: Colors.grey[600]))
                ],),)),
            SizedBox(height: 22   ,),
            Container(
                width: 360,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.3))
                  ,
                ),
                child: MaterialButton(

                  onPressed: (){},child: Row(children: [
                  Container(
                      width: 35,height: 35,
                      child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRttcAHlykQMvm8VIF8StLe3wTztMVxFe4_eQ&usqp=CAU"))),
                  SizedBox(width: 50,),
                  Text("Sign in with Google",style: TextStyle(color: Colors.grey[600]),)
                ],),))

          ],
        ),
      ),
    );
  }
}