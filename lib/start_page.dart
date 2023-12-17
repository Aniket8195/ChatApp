import 'package:chat_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 175,
          ),
          Image.asset('assets/Images/firstpageimage.jpg', width: 300,height: 300,),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ChatFlux",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Connect With Your Friends In Real-Time",style: TextStyle(fontSize: 20),),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  child: const HomePage(),
                ),
              );
            },
            child: Container(
              width: 100,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
            ),
          )

          
        ],
      ),
    );
  }
}
