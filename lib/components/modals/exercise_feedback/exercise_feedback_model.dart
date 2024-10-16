import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exercise_feedback_widget.dart' show ExerciseFeedbackWidget;
import 'package:flutter/material.dart';

class ExerciseFeedbackModel extends FlutterFlowModel<ExerciseFeedbackWidget> {
  ///  Local state fields for this component.

  String duration = 'Medium';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customButtonModel.dispose();
  }
}
