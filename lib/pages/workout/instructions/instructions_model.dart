import '/components/resistance/resistance_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'instructions_widget.dart' show InstructionsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InstructionsModel extends FlutterFlowModel<InstructionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Resistance component.
  late ResistanceModel resistanceModel;

  @override
  void initState(BuildContext context) {
    resistanceModel = createModel(context, () => ResistanceModel());
  }

  @override
  void dispose() {
    resistanceModel.dispose();
  }
}
