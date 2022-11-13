import 'package:flutter/material.dart';
import 'package:resumebuilder/ui/custom_widgets/empty_box.dart';

class SelectTemplateUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [_appBar(), _body()],
    )));
  }

  Widget _appBar() {
    try {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: AppBar().preferredSize.height,
          decoration: BoxDecoration(color: Color(0xFF0E141F)),
          child: Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Back to editor', style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          ));
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _body() {
    try {
      return Container(
          child: Row(
        children: [_templates(), _preview()],
      ));
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _templates() {
    try {
      const List<String> templateNames = [
        'Toronto',
        'Stockholm',
        'New York',
        'Vienna',
        'Sydeny',
        'London',
        'Dublin',
        'Moscow',
        'Madrid',
        'Amsterdam',
        'Santiago',
        'Singapore'
      ];
      return Container(
        decoration: BoxDecoration(color: Color(0xFF495162)),
        width: 350,
        height: 800,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          itemCount: templateNames.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.70,
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 5),
          itemBuilder: (BuildContext context, int index) {
            return MouseRegion(
              onHover: (event) {
                print(templateNames[index]);
              },
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    Text(
                      templateNames[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Container(
                        height: 175,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white))
                  ],
                ),
              ),
            );
          },
        ),
      );
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _preview() {
    try {
      return Container(
        decoration: BoxDecoration(color: Color(0xFF495162)),
        width: 1100,
        height: 800,
      );
    } catch (error) {
      return EmptyBox();
    }
  }
}
