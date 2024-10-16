import '/flutter_flow/flutter_flow_util.dart';
import 'm_your_name_widget.dart' show MYourNameWidget;
import 'package:flutter/material.dart';

class MYourNameModel extends FlutterFlowModel<MYourNameWidget> {
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
