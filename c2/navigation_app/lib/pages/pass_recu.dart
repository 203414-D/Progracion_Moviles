import 'package:flutter/material.dart';
import 'package:navigation_app/pages/boton_seguir.dart';
import 'package:navigation_app/pages/cambiar_pass.dart';


class RecoverPass extends StatelessWidget {
  const RecoverPass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF47197C),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: const Color(0xFFD83A6F),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            'Recuperar contraseña',
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
                  'Ingresa tu email para recuperar tu contraseña',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                padding: EdgeInsets.symmetric(horizontal: 15),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'Ingrese su correo electrónico registrado y le enviaremos un correo electronico que contiene un enlace para restablecer su contraseña',
                  style: TextStyle(
                    color: Color.fromARGB(255, 186, 179, 179),
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(top: 250, bottom: 0),
                child: NextButton(
                  text: 'Enviar solicitud',
                  onTapCallback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChangePass()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
