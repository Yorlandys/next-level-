import '/components/exercise_card_2/exercise_card2_widget.dart';
import '/components/settings_card/settings_card_widget.dart';
import '/components/settings_card2/settings_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exercies_list_widget.dart' show ExerciesListWidget;
import 'package:flutter/material.dart';

class ExerciesListModel extends FlutterFlowModel<ExerciesListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ExerciseCard_2 component.
  late ExerciseCard2Model exerciseCard2Model1;
  // Model for ExerciseCard_2 component.
  late ExerciseCard2Model exerciseCard2Model2;
  // Model for ExerciseCard_2 component.
  late ExerciseCard2Model exerciseCard2Model3;
  // Model for ExerciseCard_2 component.
  late ExerciseCard2Model exerciseCard2Model4;
  // Model for ExerciseCard_2 component.
  late ExerciseCard2Model exerciseCard2Model5;
  // Model for ExerciseCard_2 component.
  late ExerciseCard2Model exerciseCard2Model6;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel1;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel2;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel3;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel4;
  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model1;
  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    exerciseCard2Model1 = createModel(context, () => ExerciseCard2Model());
    exerciseCard2Model2 = createModel(context, () => ExerciseCard2Model());
    exerciseCard2Model3 = createModel(context, () => ExerciseCard2Model());
    exerciseCard2Model4 = createModel(context, () => ExerciseCard2Model());
    exerciseCard2Model5 = createModel(context, () => ExerciseCard2Model());
    exerciseCard2Model6 = createModel(context, () => ExerciseCard2Model());
    settingsCardModel1 = createModel(context, () => SettingsCardModel());
    settingsCardModel2 = createModel(context, () => SettingsCardModel());
    settingsCardModel3 = createModel(context, () => SettingsCardModel());
    settingsCardModel4 = createModel(context, () => SettingsCardModel());
    settingsCard2Model1 = createModel(context, () => SettingsCard2Model());
    settingsCard2Model2 = createModel(context, () => SettingsCard2Model());
  }

  @override
  void dispose() {
    exerciseCard2Model1.dispose();
    exerciseCard2Model2.dispose();
    exerciseCard2Model3.dispose();
    exerciseCard2Model4.dispose();
    exerciseCard2Model5.dispose();
    exerciseCard2Model6.dispose();
    settingsCardModel1.dispose();
    settingsCardModel2.dispose();
    settingsCardModel3.dispose();
    settingsCardModel4.dispose();
    settingsCard2Model1.dispose();
    settingsCard2Model2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
