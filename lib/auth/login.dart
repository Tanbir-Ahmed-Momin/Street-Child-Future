import 'package:child_labour/auth/signup.dart';
import 'package:child_labour/screens/home.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
          
          
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
    image: DecorationImage(
        image: AssetImage("image/child01.jpeg"), 
        fit: BoxFit.cover),
  ),
          ),
           Container(
            alignment: Alignment(-0.8, 0),
            child: Text("Sign In",style:TextStyle(fontSize:20),),
          ),
          Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children:  <Widget>[
                        TextField(
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 72, 218, 255),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade100 )),
                            labelText: "Email",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(height: 5,),
                       TextField(
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 72, 212, 255),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade100 )),
                            labelText: "Password",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(color: Colors.grey)),
                      ),
                     
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                        child: const Text(
                          "FORGOT PASSWORD?",
                          style:
                              TextStyle(color: Color.fromARGB(255, 72, 224, 255), fontSize: 11),
                        ))),
                  Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => home()),);
                              },
                              child: const Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 96, 183, 196),
                                    Color.fromARGB(255, 133, 239, 242)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                    
                    ],
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "DON'T HAVE AN ACCOUNT ? ",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ), 
                    TextButton(
                   onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => signup()),
                       );
                   },
                  child:  Text(
                      " SIGN UP",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 123, 149, 233),
                          fontWeight: FontWeight.w700),
                    ))
                  ],
                )
        ],
      ),
    );
  }
}