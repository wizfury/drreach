
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home.dart';
import './onboarding_items.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = OnboardingItems();
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: isLastPage ? Row(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: MediaQuery.of(context).size.height*.2,
                width: MediaQuery.of(context).size.width*.2,
                child: getStarted()),
          ],
        ): Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //skip
            TextButton(
                onPressed: ()=>pageController.jumpToPage(controller.items.length-1),
                child: Text("Skip")),

            //Indicator
            SmoothPageIndicator(

                controller: pageController,
                count: controller.items.length,
                onDotClicked: (index)=>pageController.animateToPage(index,
                duration: const Duration(milliseconds: 600),curve: Curves.easeIn),
                effect: const JumpingDotEffect(
                  verticalOffset: 15,
                  dotHeight: 12,
                  dotWidth: 12,

                  activeDotColor: Colors.deepOrange
                ),

            ),

            //Next
            TextButton(
                onPressed: ()=>pageController.nextPage(
                    duration: const Duration(milliseconds: 600), curve: Curves.easeIn),

                child: Text("Next"))
          ],

        ),
      ),

      body: Stack(
        children: [
          Container(

            margin: EdgeInsets.symmetric(horizontal: 10),
            child: PageView.builder(
              onPageChanged: (index)=> setState(()=>
                isLastPage=controller.items.length-1==index
              ),
                itemCount: controller.items.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset(controller.items[index].image)),
                      const SizedBox(height: 35,),
                      Image.asset(controller.items[index].titleimg,),
                      const SizedBox(height: 15),
                      Text(controller.items[index].description,style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,fontSize: 18) ,textAlign: TextAlign.center,)

                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget getStarted(){
    return IconButton(

        onPressed: () async {
          final pres =  await SharedPreferences.getInstance();
          pres.setBool("onboarding",true);

          //After pressing > button this onboarding value becomes true
          if(!mounted)return;
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
        },
        icon: Image.asset("assets/onboarding_button.png"),
        );
  }
}
