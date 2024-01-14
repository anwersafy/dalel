import 'package:flutter/material.dart';
import '../../../../core/functions/navigation.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/get_buttons.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              physics: const BouncingScrollPhysics(),
                    children: [
            const SizedBox(height: 30),
             CustomNavBar(
               onTap:(){
               customNavigateReplacment(context, '/SignUp');
            } ,),
            OnBoardingWidgetBody(pageController:pageController ,
              onPageChanged:(index){
                setState(() {
                  currentPage = index;
                });
              } ,),

            const SizedBox(height: 80),
            GetButtons(currentPage: currentPage,pageController: pageController,),
            const SizedBox(height: 10),
                    ],
                  ),
          )),
    );
  }
}

