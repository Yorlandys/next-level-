import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recovery_duration_widget.dart' show RecoveryDurationWidget;
import 'package:flutter/material.dart';

class RecoveryDurationModel extends FlutterFlowModel<RecoveryDurationWidget> {
  ///  Local state fields for this component.

  String duration = 'Medium';

  ///  State fields for stateful widgets in this component.

  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customButtonModel.dispose();
  }
}
