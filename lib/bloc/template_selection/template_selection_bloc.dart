import 'package:flutter_bloc/flutter_bloc.dart';
import 'template_selection_event.dart';
import 'template_selection_state.dart';

typedef Event = TemplateSelectionEvent;
typedef State = TemplateSelectionState;

class TemplateSelectionBloc extends Bloc<Event, State> {
  TemplateSelectionBloc() : super(State()) {}
}
