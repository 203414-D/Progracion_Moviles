
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onboarding_view/pages/login.dart';
import 'package:onboarding_view/screens/onboarding/components/content_boarding.dart';
import 'package:onboarding_view/screens/onboarding/components/content_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  PageController pageController = PageController();
  List<Map<dynamic, dynamic>> boardingData = [
    {
      'image': 'assets/images/B1.png',
      'title': 'ESPARCIMIENTO',
      'title2': 'Brindamos todos los servicios para consentir a tu mascota',
    },
    {
      'image': 'assets/images/B2.png',
      'title': 'ADOPCION',
      'title2': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    },
    {
      'image': 'assets/images/B3.png',
      'title': 'HOSPITALIDAD',
      'title2': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    },
    {
      'image': 'assets/images/B4.png',
      'title': 'VETERINARIA',
      'title2': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    },
    {
      'image': 'assets/images/B5.png',
      'title': 'TIENDA',
      'title2': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    }
  ];
   void incrementCurrentPage() {
    if (currentPage < boardingData.length) {
          setState(() {
      currentPage += 1;
    });
    pageController.jumpToPage(currentPage);
    } 
  }
  @override
   Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
            flex: 2,
            child: Container(padding: const EdgeInsets.only(top:150),
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) => ContentBoarding(
                image: boardingData[index]['image'],
                 title: boardingData[index]['title'],
                title2: boardingData[index]['title2'],
              ),
              itemCount: boardingData.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
           )
         ),
        Expanded(flex: 1, child: Container(
          child:Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    List.generate(
                      boardingData.length, 
                      (index) => page(index: index, currentPage: currentPage),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: currentPage == boardingData.length - 1
                  ? ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login())
                    );
                  }, style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 131, 161, 97), 
                    ),
                    backgroundColor: const Color.fromARGB(255, 131, 161, 97),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    fixedSize: const Size(290, 45)
                  ), 
                  child:const Text('Continuar',
                   style: TextStyle(fontSize: 15, 
                   fontWeight: FontWeight.bold,
                   color: Colors.white),
                  ),
                  )
                  : ElevatedButton(onPressed: incrementCurrentPage, style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 139, 139, 139),
                    ),
                    foregroundColor: const Color.fromARGB(255, 139, 139, 139),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    fixedSize: const Size(290, 45)
                  ), 
                  child:const Text('Siguiente',
                   style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold
                    ),
                  ),
            ),
          ),
         ],
        ),
      )),
    ],
   ));
  }
}
