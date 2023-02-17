import 'package:flutter/material.dart';
import 'package:navigation_app/pages/boton_seguir.dart';
import 'package:navigation_app/pages/pass_recu.dart';
import 'package:navigation_app/pages/login.dart';


class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF47197C),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Color.fromARGB(255, 216, 58, 111),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            'Registrate',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Text(
                  'Crea una cuenta para usar la App',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.5),
                child: Text(
                  'Nombre',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: 'Nombre completo',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 186, 179, 179),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              

              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.5),
                child: Text(
                  'Correo electrónico',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: 'Correo electrónico',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 186, 179, 179),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              // seccion para contraseña
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  'Contraseña',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.5),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 186, 179, 179),
                      fontSize: 16,
                    ),
                      suffixIcon: Icon(
                      Icons.visibility,
                      color: Color.fromARGB(255, 186, 179, 179),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 5),
                child: Text(
                  'La contraseña debe contener caracteres, numero y simbolos con un minimo de 6 caracteres',
                  style: TextStyle(
                    color: Color.fromARGB(255, 186, 179, 179),
                    fontSize: 13,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 0.5, left: 5),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {  },
                      activeColor: Colors.blue,
                      checkColor: Colors.white,
                      tristate: false,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    ),
                    Text(
                      'Al registrarme, acepto los', 
                      style: TextStyle(fontSize: 13 ),
                    ),
                    Text(
                      ' términos y condiciones', 
                      style: TextStyle(fontSize: 13,
                      color: Color.fromARGB(255, 225, 65, 109)),
                    ),
                    Text(' y', 
                    style: TextStyle(fontSize:13 ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  children: [
                    Text(
                      'la ',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'política de privacidad',
                      style: TextStyle(fontSize: 13,
                      color: Color.fromARGB(255, 225, 65, 109)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 0),
                child: NextButton(
                  text: 'Crear cuenta',
                  onTapCallback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RecoverPass()),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
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
                          MaterialPageRoute(
                              builder: (context) => const Login()),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
