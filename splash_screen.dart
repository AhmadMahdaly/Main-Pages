import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// this splash screen for my app //
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // This is setting the time for disappearance //
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
// This is the page you are redirecting to //
          builder: (_) => const HomeScreen(),
        ),
      );
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  voiddespose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        
        decoration: const BoxDecoration(
          //color: Color(0xFF0078FF),
          
// the GRADIENT what I use //
          gradient: LinearGradient(
            
// select color for GRADIENT //
            colors: [Color(0xFF8F81BC), Colors.white10],
            
// select direction for GRADIENT //
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
// add your images & Icon or Text //
            
            Image(
              image: AssetImage(
                  'assets/images/0efb74a0ffe4712a7bc661c21bcfa74c.png'),
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
