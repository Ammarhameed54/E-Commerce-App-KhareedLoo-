import 'package:flutter/material.dart';
import 'package:khareedloo/pages/bottomnav.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // take this background color to match background color with image 
      backgroundColor: const Color(0xffecefe8),

      body: Column(
        // Column was Wrapped in Container , i removed it, that was Unnecessary

        children: [
          //background Image
          Image.asset("images/uipics/login_pic.jpg"),

          //Custom Text

          const Text("Explore\nThe Best\nProducts", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          const SizedBox(height: 30,),

          // Button for Navigating Next

          InkWell(
            onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavBar())),
            child: Container(
              padding: const EdgeInsets.all(25 ),
              decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              child: const Icon(Icons.arrow_forward_rounded, color: Colors.white, size: 50,),
            ),
          )
        ],
      )
    );
  }
}