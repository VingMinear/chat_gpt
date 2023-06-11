import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/theme/controller/theme_provider.dart';

class ToggleSwitcher extends StatefulWidget {
  const ToggleSwitcher({super.key});

  @override
  State<ToggleSwitcher> createState() => _ToggleSwitcherState();
}

class _ToggleSwitcherState extends State<ToggleSwitcher> {
  // true = ligth & false= dark

  var width = 80.0;
  var height = 40.0;
  var darkGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    transform: GradientRotation(-0.2),
    colors: [
      Color(0xff202063),
      Color(0xff494577),
    ],
  );
  var lightGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    transform: const GradientRotation(-0.6),
    colors: [
      const Color(0xff65D5F3),
      const Color(0xffBDEEF5).withOpacity(0.6),
    ],
  );
  var duration = const Duration(milliseconds: 400);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
      onTap: () {
        themeProvider.toggleTheme();
      },
      child: AnimatedContainer(
        width: width,
        height: height,
        duration: duration,
        decoration: BoxDecoration(
          gradient: themeProvider.switcher ? lightGradient : darkGradient,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: AnimatedOpacity(
                opacity: themeProvider.switcher ? 0 : 1,
                duration: duration,
                child: Image.asset("assets/images/stars.png"),
              ),
            ),
            Positioned(
              right: 8,
              bottom: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: AnimatedOpacity(
                  opacity: themeProvider.switcher ? 1 : 0,
                  duration: duration,
                  child: Image.asset("assets/images/clouds.png"),
                ),
              ),
            ),
            AnimatedPositioned(
              top: 0,
              left: themeProvider.switcher ? 0 : width / 2,
              bottom: 0,
              duration: duration,
              child: AnimatedCrossFade(
                duration: duration,
                firstChild: icon("assets/images/sun.png"),
                secondChild: icon("assets/images/moon.png"),
                crossFadeState: themeProvider.switcher
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container icon(String asset) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        // color: Colors.amber,
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
