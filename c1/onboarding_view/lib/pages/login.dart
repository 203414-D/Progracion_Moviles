import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100,left: 20, right: 20),
          child: SingleChildScrollView(
          child: Column(
            children: [
            const SizedBox(
              width: 100, height: 100,
              child: CircleAvatar(backgroundImage: AssetImage('assets/images/User.png'),
              radius: 220,
              )
            ),
           const  Padding(
               padding:  EdgeInsets.only(top:10,bottom: 30),
               child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'email'),
                ),
             ),
           const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: TextField(
                obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password'),
                ),
            ),
              ElevatedButton(onPressed: (){}, 
              child: const Text('Log in')
              ),
              TextButton(
                     onPressed: () {
                      Navigator.pushNamed(context, '/tercera');
                   }, 
                       child: Text('or, sign up', style: TextStyle(fontSize: 15.0),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}