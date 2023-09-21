import 'package:cross_scroll/cross_scroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_input_component_app/widgets/my_input.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: CrossScroll(
          child: Container(width: 1920, height: 1920, child: Container(color: Colors.white, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [SideBar(), MyInputsPage()])))),
    );
  }
}

class MyInputsPage extends StatelessWidget {
  const MyInputsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Inputs', style: GoogleFonts.poppins(fontSize: 24, color: Color(0xff4f4f4f), fontWeight: FontWeight.w500)),
            SizedBox(height: 65),
            Text(
              'MyInput()',
              style: GoogleFonts.ubuntuMono(fontSize: 12),
            ),
            SizedBox(height: 16),
            MyInput(),
            SizedBox(height: 42),
            Text(
              'MyInput(error: true)',
              style: GoogleFonts.ubuntuMono(fontSize: 12),
            ),
            SizedBox(height: 16),
            MyInput(error: true),
            SizedBox(height: 42),
            Text(
              'MyInput(disabled: true)',
              style: GoogleFonts.ubuntuMono(fontSize: 12),
            ),
            SizedBox(height: 16),
            MyInput(disabled: true),
            SizedBox(height: 42),
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyInput(helperText: 'Some interesting text')",
                    style: GoogleFonts.ubuntuMono(fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  MyInput(helperText: 'Some interesting text'),
                ],
              ),
              SizedBox(width: 96),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyInput(error: true, helperText: 'Some interesting text')",
                    style: GoogleFonts.ubuntuMono(fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  MyInput(error: true, helperText: 'Some interesting text'),
                ],
              )
            ]),
            SizedBox(height: 42),
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyInput(startIcon: Icons.phone)",
                    style: GoogleFonts.ubuntuMono(fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  MyInput(startIcon: Icons.phone),
                ],
              ),
              SizedBox(width: 156),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyInput(endIcon: Icons.lock)",
                    style: GoogleFonts.ubuntuMono(fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  MyInput(endIcon: Icons.lock),
                ],
              )
            ]),
            SizedBox(height: 42),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MyInput(value: 'Text')",
                  style: GoogleFonts.ubuntuMono(fontSize: 12),
                ),
                SizedBox(height: 16),
                MyInput(value: 'Text'),
              ],
            ),
            SizedBox(height: 42),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyInput(size: Sizes.sm)",
                    style: GoogleFonts.ubuntuMono(fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  MyInput(size: Sizes.sm),
                ],
              ),
              SizedBox(width: 156),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyInput(size: Sizes.sm)",
                    style: GoogleFonts.ubuntuMono(fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  MyInput(size: Sizes.md),
                ],
              ),
            ]),
            SizedBox(height: 42),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MyInput(fullWidth: true)",
                  style: GoogleFonts.ubuntuMono(fontSize: 12),
                ),
                SizedBox(height: 16),
                MyInput(fullWidth: true),
              ],
            ),
            SizedBox(height: 42),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MyInput(rows: 4)",
                  style: GoogleFonts.ubuntuMono(fontSize: 12),
                ),
                SizedBox(height: 16),
                MyInput(rows: 4),
              ],
            ),
            RichText(
              text: TextSpan(text: 'created by thigraa - devChallenges.io', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: Color(0xff9E9E9E))),
            )
          ],
        ));
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
          ),
          SideBarLink(text: 'Inputs', color: Color(0xff090F31)),
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
