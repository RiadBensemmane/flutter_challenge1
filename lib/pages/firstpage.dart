import "package:flutter/material.dart";
import "package:challenge1mc/const/colors.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: gradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:
         SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
           child: SizedBox(
            width: MediaQuery.of(context).size.width,
             child:  Column(
                mainAxisSize: MainAxisSize.min,
               children: [
                Transform(
                  transform: Matrix4.translationValues(175, -28, 1),
                  child: Image.asset("images/toppipe.png"),
                  ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Center(
                      child: Transform(
                        transform: Matrix4.translationValues(1, -225, 1),
                        child: Image.asset("images/bird.png")
                        ),
                      ),
                  ),   
                ),
                Transform(
                  transform: Matrix4.translationValues(1, -330, 1),
                  child: const Column(
                    children: [
                  WhiteText(text: "Welcome to", size:30),
                  WhiteText(text: "Dash App",   size:25),
                    ],
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(1, -150, 1),
                  child: const GetStartedButton(),
                  ),
           
                Transform(
                  transform: Matrix4.translationValues(-155, -160, 1),
                  child: Image.asset("images/botpipe.png"),
                  ),           
               ],
             ),
           ),
         ),
      ),
    );
  }
}

class WhiteText extends StatelessWidget {
  const WhiteText({
    super.key,
    required this.text,
    required this.size,
  });

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        color: Colors.white,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}


class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: (){
        Navigator.pushNamed(context, "/secondpage");
      },
      style: FilledButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(225, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
      child: const Text(
        "Get Started",
        style: TextStyle(color: blue, fontSize: 18),
        
      ),
    );
  }
}
