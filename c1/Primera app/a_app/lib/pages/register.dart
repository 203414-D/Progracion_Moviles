import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding (
          padding: const EdgeInsets.only(top: 100,left: 20, right: 20),
          child: SingleChildScrollView(
          child: Column(
            children:[
              const SizedBox(
                width: 80, height: 80,
                child: CircleAvatar(backgroundImage: AssetImage('assets/images/User.png'),
                radius: 220,
              ),
             ),
             const Padding(
                 padding:  EdgeInsets.only(top:5,bottom: 5),
                 child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Email'),
                ),
             ),
           const Padding(
              padding: EdgeInsets.only(top: 5,bottom: 5),
              child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Last Name'),
                ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'First Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 5),
                child: Row(children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Years'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Gender'
                      ),
                    ),
                   ),
                 ],
                ),
              ),
             const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone'),
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 15),
                child:  TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password'),
                ),
              ),
               const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child:  TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password'),
                ),
              ),
              ElevatedButton(
                onPressed: (){}, 
                  child: Text('sign in')
                ),
                TextButton(
                     onPressed: () {
                      Navigator.pushNamed(context, '/');
                   }, 
                       child: Text('You alredy have an account, log in', style: TextStyle(fontSize: 15.0),),
                )
            ],
          ),
          ),
        ),
      ),
    );
  }
}