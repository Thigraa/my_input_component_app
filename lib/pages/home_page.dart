import 'package:cross_scroll/cross_scroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: CrossScroll(
          child: Container(width: 1920, height: 1080, child: Container(color: Colors.white, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [SideBar(), MyButtonsPage()])))),
    );
  }
}

class MyButtonsPage extends StatelessWidget {
  const MyButtonsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50), child: Column());
  }
}

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: double.infinity,
      color: Color(0xFFFAFBFD),
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 38),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LogoTitle(),
          SizedBox(
            height: 142,
          ),
          SideBarLink(text: 'Colors'),
          SideBarLink(text: 'Typography'),
          SideBarLink(text: 'Spaces'),
          SideBarLink(
            text: 'Buttons',
            color: Color(0xff090F31),
          ),
          SideBarLink(text: 'Inputs'),
          SideBarLink(text: 'Grid'),
        ],
      ),
    );
  }
}

class SideBarLink extends StatelessWidget {
  const SideBarLink({super.key, required this.text, this.color = const Color(0xff9E9E9E)});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      child: Text(
        text,
        style: GoogleFonts.notoSans(textStyle: TextStyle(color: color, fontWeight: FontWeight.w500, fontSize: 18)),
      ),
    );
  }
}

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
      children: [
        TextSpan(text: 'Dev', style: TextStyle(color: Color(0xffF7542E))),
        TextSpan(text: 'challenges.io'),
      ],
    ));
  }
}
