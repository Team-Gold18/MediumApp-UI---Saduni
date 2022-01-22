// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:login_apps/HomeScreen.dart';

class IntroSlider extends StatefulWidget {
  const IntroSlider(
      {Key? key,
      Color? backgroundColorAllSlides,
      required Text renderSkipBtn,
      required Text renderNextBtn,
      required Text renderDoneBtn,
      required Color colorActiveDot,
      required double sizeDot,
      dotSliderAnimation? typeDotAnimation,
      List<Widget>? listCustomTabs,
      required BouncingScrollPhysics scrollPhysics,
      required bool hideStatusBar,
      required Future Function() onDonePress})
      : super(key: key);

  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(new Slide(
      title: "About",
      description: "Developer",
      pathImage: "images/woman.png",
    ));
    slides.add(new Slide(
      title: "About",
      description: "Developer.......",
      pathImage: "images/login.png",
    ));
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];

    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage.toString(),
                    matchTextDirection: true,
                    height: 60,
                  ),
                ),
                Container(
                    child: Text(currentSlide.title.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 25))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                      child: Text(
                    currentSlide.description.toString(),
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, height: 1.5),
                  )),
                )
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.green[700],
      renderSkipBtn: Text(
        "Skip",
        style: TextStyle(color: Colors.green[200]),
      ),
      renderNextBtn: Text(
        "Next",
        style: TextStyle(color: Colors.green[200]),
      ),
      renderDoneBtn: Text(
        "Done",
        style: TextStyle(color: Colors.green[200]),
      ),
      colorActiveDot: Colors.white,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: renderListCustomTabs(),
      scrollPhysics: const BouncingScrollPhysics(),
      hideStatusBar: false,
      onDonePress: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => HomeScreen(),
          )),
    );
  }
}
