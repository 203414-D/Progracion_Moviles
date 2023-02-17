import 'package:flutter/material.dart';
import 'package:navigation_app/pages/Login.dart';
import 'package:navigation_app/pages/register.dart';
import 'package:navigation_app/pages/boton_registro.dart';



class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/logo.PNG',
                width: 220,
                height: 220,
              ),
              const SizedBox(height: 20),

        
              RegisterButton(
                text: 'Continuar con Google',
                onTapCallback: () {},
                color: const Color(0xFF4068EC),
                color_cont: const Color(0xFF4068EC),
                colorText: Colors.white,
                img_icon: Image.asset(
                  'assets/images/google.png',
                  width: 20,
                  height: 20,
                ), onPressed: () {  },
              ),

              const SizedBox(height: 20),

              RegisterButton(
                text: 'Continuar con Facebook',
                onTapCallback: () {},
                color: Color.fromARGB(255, 56, 79, 159),
                color_cont: Color.fromARGB(255, 56, 79, 159),
                colorText: Colors.white,
                img_icon: Image.asset(
                  'assets/images/facebook.png',
                  width: 20,
                  height: 20,
                ), onPressed: () {  },
              ),

              const SizedBox(height: 30),

             
              RegisterButton(
                text: 'Registrarse con e-mail',
                onTapCallback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Register(),
                    ),
                  );
                },
                color: Colors.white,
                color_cont: const Color(0xFF62676D),
                colorText: const Color(0xFF62676D),
                img_icon: Image.asset(
                  'assets/images/email.png',
                  width: 20,
                  height: 20,
                ), onPressed: () {  },
              ),

              const SizedBox(height: 50),

              const Text(
                'Entrar como invitado',
                style: TextStyle(
                  color: Color.fromARGB(255, 225, 65, 109),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Entrar como vendedor',
                style: TextStyle(
                  color: Color.fromARGB(255, 98, 168, 54),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes cuenta?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 78, 78, 78),
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: Color.fromARGB(255, 225, 65, 109),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
