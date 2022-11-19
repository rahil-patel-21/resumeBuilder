import 'package:flutter_bloc/flutter_bloc.dart';
import 'template_selection_event.dart';
import 'template_selection_state.dart';

typedef Event = TemplateSelectionEvent;
typedef State = TemplateSelectionState;
typedef BlocEmit = Emitter<State>;

class TemplateSelectionBloc extends Bloc<Event, State> {
  TemplateSelectionBloc() : super(State()) {
    on<UpdateCardOnHover>(_updateCardOnHover);
  }

  _updateCardOnHover(UpdateCardOnHover event, BlocEmit emit) {
    try {
      final isSelected = event.isSelected;
      emit(state.copyWith(templateName: isSelected ? event.templateName : ''));
    } catch (error) {}
  }
}
