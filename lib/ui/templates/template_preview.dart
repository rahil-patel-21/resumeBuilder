import 'package:flutter/material.dart';
import 'package:resumebuilder/ui/custom_widgets/empty_box.dart';
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
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF092A4C),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6))),
                      width: SizeConfig.screenWidth * 0.35,
                      height: SizeConfig.screenHeight * 1.2,
                    )
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
        padding: const EdgeInsets.only(left: 50, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text('Rahil Patel',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Text('SOFTWARE DEVELOPER', style: TextStyle(fontSize: 10)),
            SizedBox(height: 40),
            Text('Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            Container(
              width: 500,
              child: Text(
                """Experienced Web Developer adept in all stages of advanced web development. Knowledgeable in user interface, testing, and debugging processes. Bringing forth expertise in design, installation, testing and maintenance of web systems. Equipped with a diverse and promising skill-set. Proficient in an assortment of technologies, including Java, ASP.NET, C#, IIS, Tomcat, and Microsoft SQL Server. Able to effectively self-manage during independent projects, as well as collaborate in a team setting. Experienced Software Developer adept in bringing forth expertise in design, installation, testing and maintenance of software systems.
            """,
                textAlign: TextAlign.start,
                style: TextStyle(height: 1.5),
              ),
            ),
            Text('Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            Container(
              width: 500,
              child: Text(
                """Experienced Web Developer adept in all stages of advanced web development. Knowledgeable in user interface, testing, and debugging processes. Bringing forth expertise in design, installation, testing and maintenance of web systems. Equipped with a diverse and promising skill-set. Proficient in an assortment of technologies, including Java, ASP.NET, C#, IIS, Tomcat, and Microsoft SQL Server. Able to effectively self-manage during independent projects, as well as collaborate in a team setting. Experienced Software Developer adept in bringing forth expertise in design, installation, testing and maintenance of software systems.
            """,
                textAlign: TextAlign.start,
                style: TextStyle(height: 1.5),
              ),
            ),
            Text('Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            Container(
              width: 500,
              child: Text(
                """Experienced Web Developer adept in all stages of advanced web development. Knowledgeable in user interface, testing, and debugging processes. Bringing forth expertise in design, installation, testing and maintenance of web systems. Equipped with a diverse and promising skill-set. Proficient in an assortment of technologies, including Java, ASP.NET, C#, IIS, Tomcat, and Microsoft SQL Server. Able to effectively self-manage during independent projects, as well as collaborate in a team setting. Experienced Software Developer adept in bringing forth expertise in design, installation, testing and maintenance of software systems.
            """,
                textAlign: TextAlign.start,
                style: TextStyle(height: 1.5),
              ),
            ),
          ],
        ),
      );
    } catch (error) {
      return EmptyBox();
    }
  }
}
