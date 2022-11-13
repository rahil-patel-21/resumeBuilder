import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resumebuilder/bloc/template_selection/template_selection_bloc.dart';

multiBlocProvider(context) {
  return [
    BlocProvider(create: (context) => TemplateSelectionBloc()),
  ];
}
