import 'package:flutter/material.dart';
import 'package:resumebuilder/ui/custom_widgets/empty_box.dart';
import 'package:resumebuilder/utils/app_theme.dart';
import 'package:resumebuilder/utils/size_config.dart';

class TemplatePreviewUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.white),
            height: SizeConfig.screenHeight * 1.2,
            width: SizeConfig.screenWidth * 1.1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _mainComponent(),
                    _sideComponent(),
                  ],
                )
              ],
            ))
      ],
    ));
  }

  Widget _mainComponent() {
    try {
      return Padding(
        padding: const EdgeInsets.only(left: 70, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text('Rahil Patel',
                style: TextStyle(fontSize: 30, fontFamily: AppTheme.fNotoSB)),
            Text(
              'SOFTWARE DEVELOPER',
              style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 1.2,
                  fontFamily: AppTheme.fSairaM),
            ),
            _profileSummary(),
            _employmentSummary()
          ],
        ),
      );
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _sideComponent() {
    try {
      return Container(
        decoration: BoxDecoration(
            color: Color(0xFF092A4C),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(6), bottomRight: Radius.circular(6))),
        width: SizeConfig.screenWidth * 0.35,
        height: SizeConfig.screenHeight * 1.2,
        child: Padding(
          padding: EdgeInsets.only(left: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 200),
            Text('Details', style: TextStyle(color: Colors.white)),
            Text('Ahmedabad', style: TextStyle(color: Colors.white)),
            Text('India', style: TextStyle(color: Colors.white)),
            Text('+91 1234567890', style: TextStyle(color: Colors.white)),
          ]),
        ),
      );
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _profileSummary() {
    try {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text('Profile',
              style: TextStyle(fontFamily: AppTheme.fMontMI, fontSize: 22)),
          Container(
            width: 510,
            child: Text(
              """Experienced Web Developer adept in all stages of advanced web development. Knowledgeable in user interface, testing, and debugging processes. Bringing forth expertise in design, installation, testing and maintenance of web systems. Equipped with a diverse and promising skill-set. Proficient in an assortment of technologies, including Java, ASP.NET, C#, IIS, Tomcat, and Microsoft SQL Server. Able to effectively self-manage during independent projects, as well as collaborate in a team setting. Experienced Software Developer adept in bringing forth expertise in design, installation, testing and maintenance of software systems.
            """,
              textAlign: TextAlign.start,
              style: TextStyle(height: 1.5, fontFamily: AppTheme.fMontMI),
            ),
          ),
        ],
      );
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _employmentSummary() {
    try {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text('Employment History',
              style: TextStyle(fontFamily: AppTheme.fMontMI, fontSize: 22)),
          Text('Team Lead, Lenditt Innovations, Ahmedabad',
              style: TextStyle(fontFamily: AppTheme.fMontMI, fontSize: 16)),
          Text('OCT 2021 - PRESENT',
              style: TextStyle(fontFamily: AppTheme.fSairaM, fontSize: 12)),
          Container(
            width: 510,
            child: Text(
              """Experienced Web Developer adept in all stages of advanced web development. Knowledgeable in user interface, testing, and debugging processes. Bringing forth expertise in design, installation, testing and maintenance of web systems. Equipped with a diverse and promising skill-set. Proficient in an assortment of technologies, including Java, ASP.NET, C#, IIS, Tomcat, and Microsoft SQL Server. Able to effectively self-manage during independent projects, as well as collaborate in a team setting. Experienced Software Developer adept in bringing forth expertise in design, installation, testing and maintenance of software systems.
            """,
              textAlign: TextAlign.start,
              style: TextStyle(height: 1.5, fontFamily: AppTheme.fMontMI),
            ),
          ),
        ],
      );
    } catch (error) {
      return EmptyBox();
    }
  }
}
