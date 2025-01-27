import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool condition = false;
  double height = 0;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    setState(() {
      condition = false;
      height = 1500;
      Future.delayed(Duration(milliseconds: 400), () {
        setState(() {
          height = 0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: Container(
        child: Stack(
          children: [
            SmoothScrollWeb(
              controller: controller,
              child: SingleChildScrollView(
                controller: controller,
                //physics: NeverScrollableScrollPhysics(),
                child: Center(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 25.0, right: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                height = MediaQuery.of(context).size.height;
                              });
                              Future.delayed(Duration(milliseconds: 1000), () {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                                child: Icon(
                              Icons.clear_rounded,
                              color: Colors.white,
                              size: 35.0,
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Get to know me",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "About Me",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      BootstrapRow(height: 600, children: [
                        BootstrapCol(
                          sizes: 'col-md-12 col-lg-4 col-sm-12',
                          child: MediaQuery.of(context).size.width < 992
                              ? CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                    child: Image(
                                      image: AssetImage('Asset/perfil1.jpeg'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),

                                  //backgroundImage:
                                  // AssetImage('Asset/perfil1.jpeg'),
                                  radius:
                                      MediaQuery.of(context).size.width * 0.2)
                              : Container(
                                  height: 500,
                                  child: Image(
                                    image: AssetImage('Asset/perfil1.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        BootstrapCol(
                          sizes: 'col-md-12 col-lg-8 col-sm-12',
                          child: Container(
                            height: 570.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediaQuery.of(context).size.width > 992
                                    ? Container()
                                    : SizedBox(
                                        height: 35.0,
                                      ),
                                Text(
                                  "Who am i?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      color: Color(0xff009e66),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                AutoSizeText(
                                  "I\'m Alexander Guevara, a Systems Analyst, Designer, Movil and Web Developer",
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                      fontSize: 33.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                AutoSizeText(
                                  "I am a Systems Analyst with more than 4 years of experience working in the IT area in national companies. Passionate about the IT world with the mission to provide solutions to seemingly complicated problems, using what I learned in high school and constant self-taught training. Eager to learn new technologies and thus be able to keep up with the pace of large companies. ",
                                  maxLines: 7,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  width: double.maxFinite,
                                  height: 2.0,
                                  color: Colors.white70,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child:
                                        MediaQuery.of(context).size.width > 800
                                            ? Row(
                                                children: [
                                                  Cvcard(
                                                    text1: "Name : ",
                                                    text2: "Alexander Guevara",
                                                  ),
                                                  Spacer(),
                                                  Cvcard(
                                                    text1: "Mail : ",
                                                    text2:
                                                        "Alexander.guevaram@hotmail.com",
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Cvcard(
                                                    text1: "Name : ",
                                                    text2: "Alexander Guevara",
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Cvcard(
                                                    text1: "Mail : ",
                                                    text2:
                                                        "Alexander.guevaram@hotmail.com",
                                                  ),
                                                ],
                                              )),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: MediaQuery.of(context).size.width > 800
                                      ? Row(
                                          children: [
                                            Cvcard(
                                              text1: "Age : ",
                                              text2: "22",
                                            ),
                                            Spacer(),
                                            Cvcard(
                                              text1: "From : ",
                                              text2: "Lima, Perú",
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Cvcard(
                                              text1: "Age : ",
                                              text2: "22",
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Cvcard(
                                              text1: "From : ",
                                              text2: "Lima, Perú",
                                            ),
                                          ],
                                        ),
                                ),
                                SizedBox(
                                  height: 35.0,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _launchCV();
                                      },
                                      child: Container(
                                        height: 45,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          color: Color(0xff009e66),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Download CV",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                    MediaQuery.of(context).size.width > 670
                                        ? Container(
                                            color: Colors.white70,
                                            width: 100.0,
                                            height: 1.0,
                                            margin: EdgeInsets.only(
                                                left: 7.0, right: 10.0),
                                          )
                                        : Container(
                                            color: Colors.white70,
                                            width: 50.0,
                                            height: 1.0,
                                            margin: EdgeInsets.only(
                                                left: 7.0, right: 10.0),
                                          ),
                                    MediaQuery.of(context).size.width > 670
                                        ? Row(
                                            children: [
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Icon(
                                                AntDesign.facebook_square,
                                                color: Colors.white70,
                                                size: 18.0,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _launchLINKEDIN();
                                                },
                                                child: Icon(
                                                  AntDesign.linkedin_square,
                                                  color: Colors.white70,
                                                  size: 18.0,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _launchGITHUB();
                                                },
                                                child: Icon(
                                                  AntDesign.github,
                                                  color: Colors.white70,
                                                  size: 18.0,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Icon(
                                                AntDesign.facebook_square,
                                                color: Colors.white70,
                                                size: 18.0,
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _launchLINKEDIN();
                                                },
                                                child: Icon(
                                                  AntDesign.linkedin_square,
                                                  color: Colors.white70,
                                                  size: 18.0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _launchGITHUB();
                                                },
                                                child: Icon(
                                                  AntDesign.github,
                                                  color: Colors.white70,
                                                  size: 18.0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                            ],
                                          ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "     Services i offer",
                              style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "  My Services",
                              style: GoogleFonts.poppins(
                                  fontSize: 46.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                          ],
                        ),
                      ),
                      BootstrapRow(height: 300, children: [
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.CodeSandbox,
                            head: "Systems Analyst",
                            sub: "",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.CodeSandbox,
                            head: "Movil Developer",
                            sub: "",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.CodeSandbox,
                            head: "Web Developer",
                            sub: "",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.piechart,
                            head: "HELP DESK",
                            sub: "",
                          ),
                        ),
                      ]),

                      //codigo para agregar tarjetas -----------------------------------------------------------
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            //Text(
                            //"     Get started my services",
                            //  style: GoogleFonts.poppins(
                            //    fontSize: 15.0,
                            //    color: Colors.white70,
                            //   fontWeight: FontWeight.w400),
                            // ),
                            //SizedBox(
                            // height: 8.0,
                            // ),
                            Text(
                              "  My certificates",
                              style: GoogleFonts.poppins(
                                  fontSize: 46.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: MediaQuery.of(context).size.width < 700
                                    ? MediaQuery.of(context).size.width * 0.6
                                    : MediaQuery.of(context).size.width * 0.9,
                                child: BootstrapRow(
                                  height: 400,
                                  children: [
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: 'Asset/google.png',
                                        btext: "View",
                                        name:
                                            "Desarrollo de Aplicaciones Móviles",
                                        platform: "Google Activate - 2020",
                                        // id: "PRG DNA WEV",
                                      ),
                                    ),
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: 'Asset/google.png',
                                        btext: "View",
                                        name: "e-commerce",
                                        platform: "Google Activate - 2020",
                                        // id: "MMA EFK BBT",
                                      ),
                                    ),
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: 'Asset/google.png',
                                        btext: "View",
                                        name: "Cloud Computing",
                                        platform: "Google Activate - 2020",
                                        // id: "93Z Q3W 8LC",
                                      ),
                                    ),
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: 'Asset/linux.png',
                                        btext: "View",
                                        name: "Linux",
                                        platform:
                                            "Linux Professional Institute - 2018",
                                      ),
                                    ),
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: 'Asset/cisco.png',
                                        btext: "View",
                                        name: "CCNA1 Certificate",
                                        platform: "CISCO - 2018",
                                      ),
                                    ),
                                    BootstrapCol(
                                      sizes: 'col-sm-12 col-md-12 col-lg-4',
                                      child: PlanCard(
                                        icon: 'Asset/iconplatzi.png',
                                        btext: "View",
                                        name:
                                            "Estrategias para aprender ingles",
                                        platform: "PLatzi - 2021",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: condition ? null : 0,
                    bottom: condition ? 0 : null,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                      onEnd: () {
                        // setState(() {
                        //   condition ? condition = false : condition = true;
                        //   Future.delayed(Duration(milliseconds: 400), () {
                        //     height = 0;
                        //   });
                        // });
                      },
                      height: height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlanCard extends StatefulWidget {
  final String icon;
  final String btext;
  final String name;
  final String platform;

  PlanCard({this.btext, this.icon, this.name, this.platform});
  @override
  _PlanCardState createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: 550,
      color: Color(0xff161616),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.icon,
            height: 80,
          ),
          //SvgPicture.asset(
          //  widget.icon,
          //  height: 75,
          // ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            widget.name,
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            widget.platform,
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          GestureDetector(
            onTap: () {
              _launchLINKEDIN();
            },
            child: Container(
              height: 40.0,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Color(0xff009e66),
              ),
              child: Center(
                child: Text(
                  widget.btext,
                  style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final IconData icon;
  final String head;
  final String sub;

  ServiceCard({
    this.head,
    this.icon,
    this.sub,
  });
  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hover = true;
          print("true");
        });
      },
      onExit: (value) {
        setState(() {
          hover = false;
          print("false");
        });
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(-1, 1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5)
              ],
              color: Color(0xff161616),
            ),
            margin: EdgeInsets.only(bottom: 50.0),
            height: 230,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 35.0, right: 35, bottom: 30, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        widget.head,
                        style: GoogleFonts.poppins(
                            fontSize: 21.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        widget.sub,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AnimatedContainer(
                  duration: Duration(milliseconds: 170),
                  curve: Curves.easeInOut,
                  height: 2.0,
                  color: !hover ? Color(0xff161616) : Color(0xff009e66),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cvcard extends StatefulWidget {
  final String text1;
  final String text2;
  Cvcard({this.text2, this.text1});
  @override
  _CvcardState createState() => _CvcardState();
}

class _CvcardState extends State<Cvcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            widget.text1,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
          Text(
            widget.text2,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Color(0xff009e66),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

_launchCV() async {
  const url =
      'https://drive.google.com/file/d/14K5mNsm6jUCouCzFRX2V9jaZaM25C58l/view';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchLINKEDIN() async {
  const url = 'https://www.linkedin.com/in/guevaraa/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGITHUB() async {
  const url = 'https://github.com/Alex6214';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
