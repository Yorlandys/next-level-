import '/components/custom_switch/custom_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'integrations_widget.dart' show IntegrationsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IntegrationsModel extends FlutterFlowModel<IntegrationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomSwitch component.
  late CustomSwitchModel customSwitchModel;

  @override
  void initState(BuildContext context) {
    customSwitchModel = createModel(context, () => CustomSwitchModel());
  }

  @override
  void dispose() {
    customSwitchModel.dispose();
  }
}
