import 'package:flutter/material.dart';

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
      return const SizedBox.shrink();
    }
  }

  Widget _body() {
    try {
      return Container(
          child: Row(
        children: [_templates()],
      ));
    } catch (error) {
      return SizedBox.shrink();
    }
  }

  Widget _templates() {
    try {
      return Container(
        decoration: BoxDecoration(color: Color(0xFF495162)),
        width: 350,
        height: 800,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.75,
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 5),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  Text(
                    'Toronto',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      height: 175,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white))
                ],
              ),
            );
          },
        ),
      );
    } catch (error) {
      return SizedBox.shrink();
    }
  }
}
