import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resumebuilder/bloc/common/bloc_events.dart';
import 'package:resumebuilder/bloc/template_selection/template_selection_bloc.dart';
import 'package:resumebuilder/bloc/template_selection/template_selection_state.dart';
import 'package:resumebuilder/ui/custom_widgets/empty_box.dart';
import 'package:resumebuilder/ui/templates/template_preview.dart';
import 'package:resumebuilder/utils/app_theme.dart';
import 'package:resumebuilder/utils/size_config.dart';

class SelectTemplateUI extends StatelessWidget {
  final ScrollController _gridViewController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TemplateSelectionBloc, TemplateSelectionState>(
      builder: ((context, state) {
        try {
          return Scaffold(
              backgroundColor: Color(0xFF495162),
              body: Column(children: [_appBar(), _body(state)]));
        } catch (error) {
          return EmptyBox();
        }
      }),
    );
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
                  const Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 15),
                  const SizedBox(width: 5),
                  Text('Back to editor',
                      style: TextStyle(
                          color: Colors.white, fontFamily: AppTheme.fNotoSB)),
                ],
              )
            ],
          ));
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _body(TemplateSelectionState state) {
    try {
      return Container(
          child: Row(
        children: [
          _templates(state),
          _preview(),
        ],
      ));
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _templates(TemplateSelectionState state) {
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
        decoration: const BoxDecoration(color: Color(0xFF495162)),
        width: 350,
        height: SizeConfig.screenHeight - AppBar().preferredSize.height - 646,
        child: Scrollbar(thumbVisibility: true,
        controller: _gridViewController,
        radius: Radius.circular(10),
          child: GridView.builder(
            controller: _gridViewController,
            itemCount: templateNames.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.70,
                crossAxisCount: 2,
                crossAxisSpacing: 0.5,
                mainAxisSpacing: 5),
            itemBuilder: (BuildContext context, int index) {
              bool isSelected = state.templateName == templateNames[index];
              return MouseRegion(
                onEnter: (_) => BlocEvent.updateTemplateCardOnHover(
                    templateNames[index], true),
                onExit: (_) => BlocEvent.updateTemplateCardOnHover('', false),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    children: [
                      Text(templateNames[index],
                          style: const TextStyle(color: Colors.white)),
                   const   SizedBox(height: 10),
                      Container(
                          height: 185,
                          width: 145,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/Images/thumbnail.png')),
                              border: Border.all(
                                  width: 5,
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.transparent),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      );
    } catch (error) {
      return EmptyBox();
    }
  }

  Widget _preview() {
    try {
      return Container(
          decoration: const BoxDecoration(color: Color(0xFF495162)),
          width: 1100,
          height: 800,
          child: TemplatePreviewUI());
    } catch (error) {
      return EmptyBox();
    }
  }
}
