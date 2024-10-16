import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'workout_feedback_widget.dart' show WorkoutFeedbackWidget;
import 'package:flutter/material.dart';

class WorkoutFeedbackModel extends FlutterFlowModel<WorkoutFeedbackWidget> {
  ///  Local state fields for this page.

  String? select = '';

  ///  State fields for stateful widgets in this page.

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
