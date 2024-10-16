import '/flutter_flow/flutter_flow_util.dart';
import 'age_widget.dart' show AgeWidget;
import 'package:flutter/material.dart';

class AgeModel extends FlutterFlowModel<AgeWidget> {
  ///  Local state fields for this page.

  String? gender;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
