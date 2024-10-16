import '/components/modals/popup/birthday/birthday_widget.dart';
import '/components/modals/popup/delete_account/delete_account_widget.dart';
import '/components/modals/popup/edit_gender/edit_gender_widget.dart';
import '/components/modals/popup/edit_goal/edit_goal_widget.dart';
import '/components/modals/popup/edit_height/edit_height_widget.dart';
import '/components/modals/popup/edit_name/edit_name_widget.dart';
import '/components/modals/popup/edit_weight/edit_weight_widget.dart';
import '/components/modals/popup/knee_pain/knee_pain_widget.dart';
import '/components/modals/popup/newsletter/newsletter_widget.dart';
import '/components/modals/popup/units/units_widget.dart';
import '/components/modals/upload_media/upload_media_widget.dart';
import '/components/settings_menu_btn/settings_menu_btn_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_edit_widget.dart' show ProfileEditWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileEditModel extends FlutterFlowModel<ProfileEditWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel1;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel2;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel3;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel4;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel5;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel6;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel7;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel8;
  // Model for SettingsMenuBtn component.
  late SettingsMenuBtnModel settingsMenuBtnModel9;

  @override
  void initState(BuildContext context) {
    settingsMenuBtnModel1 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel2 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel3 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel4 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel5 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel6 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel7 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel8 = createModel(context, () => SettingsMenuBtnModel());
    settingsMenuBtnModel9 = createModel(context, () => SettingsMenuBtnModel());
  }

  @override
  void dispose() {
    settingsMenuBtnModel1.dispose();
    settingsMenuBtnModel2.dispose();
    settingsMenuBtnModel3.dispose();
    settingsMenuBtnModel4.dispose();
    settingsMenuBtnModel5.dispose();
    settingsMenuBtnModel6.dispose();
    settingsMenuBtnModel7.dispose();
    settingsMenuBtnModel8.dispose();
    settingsMenuBtnModel9.dispose();
  }
}
