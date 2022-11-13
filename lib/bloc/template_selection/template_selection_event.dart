abstract class TemplateSelectionEvent {}

class UpdateCardOnHover extends TemplateSelectionEvent {
  final String templateName;
  final bool isSelected;
  UpdateCardOnHover(this.templateName, this.isSelected);
}
