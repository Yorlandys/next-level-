import '/components/settings_menu_btn/settings_menu_btn_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'food_setting_widget.dart' show FoodSettingWidget;
import 'package:flutter/material.dart';

class FoodSettingModel extends FlutterFlowModel<FoodSettingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel1;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel2;

  @override
  void initState(BuildContext context) {
    settingsMenuBtnModel1 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel2 = createModel(context, () => SettingsMenuBtnModel());
  }

  @override
  void dispose() {
    settingsMenuBtnModel1.dispose();
    settingsMenuBtnModel2.dispose();
  }
}
