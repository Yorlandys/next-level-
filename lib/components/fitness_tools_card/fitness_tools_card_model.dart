import '/components/custom_switch/custom_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fitness_tools_card_widget.dart' show FitnessToolsCardWidget;
import 'package:flutter/material.dart';

class FitnessToolsCardModel extends FlutterFlowModel<FitnessToolsCardWidget> {
  ///  State fields for stateful widgets in this component.

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
