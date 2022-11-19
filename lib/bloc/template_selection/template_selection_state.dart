class TemplateSelectionState {
  final String templateName;
  TemplateSelectionState({this.templateName = ''});

  TemplateSelectionState copyWith({String? templateName}) {
    return TemplateSelectionState(
        templateName: templateName ?? this.templateName);
  }
}
