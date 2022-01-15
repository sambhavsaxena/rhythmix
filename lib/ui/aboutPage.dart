import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:Rhythmix/helper/utils.dart';
import 'package:Rhythmix/style/appColors.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.lightBlue[400],
            Colors.black,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          brightness: Brightness.dark,
          centerTitle: true,
          title: GradientText(
            "About the creator",
            shaderRect: Rect.fromLTWH(13.0, 0.0, 100.0, 50.0),
            gradient: LinearGradient(colors: [
              Colors.lightBlue[400],
              Colors.lightBlue,
            ]),
            style: TextStyle(
              color: accent,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: accent,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(child: AboutCards()),
      ),
    );
  }
}

class AboutCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 6),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Image.asset(
                    "assets/trans.png",
                    height: 180.0,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                      child: Text(
                        "Rhythmix  |  1.1.0",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20, bottom: 8.0, left: 10, right: 10),
            child: Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 10),
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 1,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/76242518?s=400&u=aadd0902d6ff29a39477b1cfabb45315184e3c12&v=4"),
                    ),
                  ),
                ),
                title: Text(
                  'Sambhav Saxena',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'App Developer | Speed Coder',
                  style: TextStyle(color: accentLight),
                ),
                trailing: Wrap(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        MdiIcons.github,
                        color: accent,
                      ),
                      tooltip: 'Github profile',
                      onPressed: () {
                        launchURL("https://github.com/sambhavsaxena");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        MdiIcons.instagram,
                        color: accent,
                      ),
                      tooltip: 'Connect on Instagram',
                      onPressed: () {
                        launchURL("https://www.instagram.com/ssambhavv/");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 14, right: 14),
            child: Text(
              "Being a student of a state-government funded instutute in Haryana, I had a great opportunity of developing my skills and getting better at codes and programming. I started with computers and languages early 2020's, as when I finished up with my schooling, worldwide lockdown prevailed, leaving behind plenty of time to learn new things and try out stuff. As things went well, I started getting familiar with frameworks, when I got to know about flutter. Since then, there's no coming back, just creating stuff.\n\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t LIKE THIS ONE\n\n",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Text(
              "Apart from programming, I have interests in star-gazing, travelling, public speaking and reading. I write blogs about stargazing and philosophy, travelling and photography, lifestyle and obviously, programming.\n Aspiring to write codes fast, i also indulge into competitive programming and speed-coding, helping in real-world app development as well as being sophisticated at critical thinking. And oh you know, sky is the limit!\n\n\n\n\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t| BETA RELEASE |",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
