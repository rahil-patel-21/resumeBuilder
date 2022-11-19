import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resumebuilder/ui/templates/select_templates.dart';
import 'package:resumebuilder/utils/device_config.dart';
import 'package:resumebuilder/utils/size_config.dart';
import 'bloc/common/bloc_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      child: MultiBlocProvider(
          providers: multiBlocProvider(context),
          child: Builder(builder: (context) {
            DeviceConfig.initialize(context);
            return MaterialApp(
                home: SelectTemplateUI(), debugShowCheckedModeBanner: false);
          })),
    );
  }
}

class TemplatePreviewSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.white),
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2,
                    color: const Color(0xFF656e83)),
              ],
            )));
  }
}
