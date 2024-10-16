import '/components/custom_switch/custom_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sound_settings_widget.dart' show SoundSettingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SoundSettingsModel extends FlutterFlowModel<SoundSettingsWidget> {
  ///  Local state fields for this page.

  String? plan = '';

  ///  State fields for stateful widgets in this page.

  // Model for CustomSwitch component.
  late CustomSwitchModel customSwitchModel1;
  // Model for CustomSwitch component.
  late CustomSwitchModel customSwitchModel2;
  // Model for CustomSwitch component.
  late CustomSwitchModel customSwitchModel3;

  @override
  void initState(BuildContext context) {
    customSwitchModel1 = createModel(context, () => CustomSwitchModel());
    customSwitchModel2 = createModel(context, () => CustomSwitchModel());
    customSwitchModel3 = createModel(context, () => CustomSwitchModel());
  }

  @override
  void dispose() {
    customSwitchModel1.dispose();
    customSwitchModel2.dispose();
    customSwitchModel3.dispose();
  }
}
