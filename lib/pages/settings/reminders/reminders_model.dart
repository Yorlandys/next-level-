import '/components/custom_switch/custom_switch_widget.dart';
import '/components/settings_menu_btn/settings_menu_btn_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reminders_widget.dart' show RemindersWidget;
import 'package:flutter/material.dart';

class RemindersModel extends FlutterFlowModel<RemindersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomSwitch component.
  late CustomSwitchModel customSwitchModel;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel1;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel2;

  @override
  void initState(BuildContext context) {
    customSwitchModel = createModel(context, () => CustomSwitchModel());
    settingsMenuBtnModel1 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel2 = createModel(context, () => SettingsMenuBtnModel());
  }

  @override
  void dispose() {
    customSwitchModel.dispose();
    settingsMenuBtnModel1.dispose();
    settingsMenuBtnModel2.dispose();
  }
}
