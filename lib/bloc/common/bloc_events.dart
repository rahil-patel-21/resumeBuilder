import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resumebuilder/bloc/template_selection/template_selection_bloc.dart';
import 'package:resumebuilder/bloc/template_selection/template_selection_event.dart';
import 'package:resumebuilder/globals.dart';

class BlocEvents {
  // Template Card Selection
  static TemplateSelectionBloc templateSelectionContext = gContext.read();
  static updateTemplateCardOnHover() =>
      templateSelectionContext.add(UpdateCardOnHover('', true));
}
