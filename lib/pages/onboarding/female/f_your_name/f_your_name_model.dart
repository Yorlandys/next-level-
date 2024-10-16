import '/flutter_flow/flutter_flow_util.dart';
import 'f_your_name_widget.dart' show FYourNameWidget;
import 'package:flutter/material.dart';

class FYourNameModel extends FlutterFlowModel<FYourNameWidget> {
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
