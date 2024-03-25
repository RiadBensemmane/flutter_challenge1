
import "package:flutter/material.dart";
import "package:challenge1mc/const/colors.dart";
import "package:flutter_svg/flutter_svg.dart";

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right:16, top:100),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: blue, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: blue, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(
                        
                        fontSize: 14,
                        color: blue,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 13),
                        child: SvgPicture.asset("images/search.svg", fit: BoxFit.scaleDown,),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 17, top: 22),
                child: Row(
                  children: [
                      Text(
                      "The latest",
                      style: TextStyle(
                        color: blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        height: 2.0,
                        color: blue, 
                        thickness: 1.0, 
                        indent: 10,
                        endIndent: 15,
                       
                      ),
                    ),
                  ],
                ),
              ),
              const Post(pfp: "images/bird.png", username: "Dash", atusername: "@dash.dash", image: "images/nerd.png", text: "🎓 Exciting news! I'm now a student at Flutter Training, learning more about mobile development with Flutter. Can't wait to gain new skills and become a skilled Flutter developer!"),
              const Post(pfp: "images/bird.png", username: "Dash", atusername: "@dash.dash", image: "images/nerd.png", text: "🎓 Exciting news! I'm now a student at Flutter Training, learning more about mobile development with Flutter. Can't wait to gain new skills and become a skilled Flutter developer!"),
            ],
          ),
        ),
      ),
    );
  }
}


class Post extends StatelessWidget {
  const Post({super.key, required this.pfp,
             required this.username, required this.atusername,
             required this.text, required this.image,
             });

  final String pfp;
  final String username;
  final String atusername;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17, bottom: 31),
      child: Container(
          height: 333,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(
              color: blue,
              width: 2
            
            ),
            borderRadius: BorderRadius.circular(7)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:13, left: 19, right: 8),
                    child: SizedBox(height: 28, width:28, child: Image.asset(pfp)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const  TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,  
                        ),
                      ),
                      Text(
                        atusername,
                        style: const TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: 6,
                        ),
                      ),
                      
                    ],
                  )
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 15, right: 19),
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: 10,
                    color: Colors.black,
              
                ),
                ),
            ),
        
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Transform(
                  transform: Matrix4.translationValues(0, -10, 0),
                  child: SizedBox(
                    height: 325,
                    width: 325,
                    child: Image.asset(image),
                  ),
                ),
              ),
            ),
            const PostFooter(),
            ],
            
          )
          ,
      ),
    );
  }
}


class PostFooter extends StatelessWidget {
  const PostFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19, left: 19, right: 13),
      child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: SvgPicture.asset("images/heart.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: SvgPicture.asset("images/comment.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: SvgPicture.asset("images/share.svg"),
            ),
            const Icon(Icons.bookmark_border, color: blue, size: 20, )
          ],
      ),
    );
  }
}