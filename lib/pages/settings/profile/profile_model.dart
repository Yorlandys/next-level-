import '/components/my_status/my_status_widget.dart';
import '/components/settings_card/settings_card_widget.dart';
import '/components/settings_card2/settings_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MyStatus component.
  late MyStatusModel myStatusModel1;
  // Model for MyStatus component.
  late MyStatusModel myStatusModel2;
  // Model for MyStatus component.
  late MyStatusModel myStatusModel3;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel1;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel2;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel3;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel4;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel5;
  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model1;
  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model2;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel6;
  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model3;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel7;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel8;
  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model4;
  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model5;

  @override
  void initState(BuildContext context) {
    myStatusModel1 = createModel(context, () => MyStatusModel());
    myStatusModel2 = createModel(context, () => MyStatusModel());
    myStatusModel3 = createModel(context, () => MyStatusModel());
    settingsCardModel1 = createModel(context, () => SettingsCardModel());
    settingsCardModel2 = createModel(context, () => SettingsCardModel());
    settingsCardModel3 = createModel(context, () => SettingsCardModel());
    settingsCardModel4 = createModel(context, () => SettingsCardModel());
    settingsCardModel5 = createModel(context, () => SettingsCardModel());
    settingsCard2Model1 = createModel(context, () => SettingsCard2Model());
    settingsCard2Model2 = createModel(context, () => SettingsCard2Model());
    settingsCardModel6 = createModel(context, () => SettingsCardModel());
    settingsCard2Model3 = createModel(context, () => SettingsCard2Model());
    settingsCardModel7 = createModel(context, () => SettingsCardModel());
    settingsCardModel8 = createModel(context, () => SettingsCardModel());
    settingsCard2Model4 = createModel(context, () => SettingsCard2Model());
    settingsCard2Model5 = createModel(context, () => SettingsCard2Model());
  }

  @override
  void dispose() {
    myStatusModel1.dispose();
    myStatusModel2.dispose();
    myStatusModel3.dispose();
    settingsCardModel1.dispose();
    settingsCardModel2.dispose();
    settingsCardModel3.dispose();
    settingsCardModel4.dispose();
    settingsCardModel5.dispose();
    settingsCard2Model1.dispose();
    settingsCard2Model2.dispose();
    settingsCardModel6.dispose();
    settingsCard2Model3.dispose();
    settingsCardModel7.dispose();
    settingsCardModel8.dispose();
    settingsCard2Model4.dispose();
    settingsCard2Model5.dispose();
  }
}
