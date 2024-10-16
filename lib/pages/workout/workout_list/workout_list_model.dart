import '/components/strength_card/strength_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'workout_list_widget.dart' show WorkoutListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WorkoutListModel extends FlutterFlowModel<WorkoutListWidget> {
  ///  Local state fields for this page.

  String? plan = '';

  ///  State fields for stateful widgets in this page.

  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel1;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel2;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel3;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel4;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel5;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel6;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel7;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel8;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel9;
  // Model for StrengthCard component.
  late StrengthCardModel strengthCardModel10;

  @override
  void initState(BuildContext context) {
    strengthCardModel1 = createModel(context, () => StrengthCardModel());
    strengthCardModel2 = createModel(context, () => StrengthCardModel());
    strengthCardModel3 = createModel(context, () => StrengthCardModel());
    strengthCardModel4 = createModel(context, () => StrengthCardModel());
    strengthCardModel5 = createModel(context, () => StrengthCardModel());
    strengthCardModel6 = createModel(context, () => StrengthCardModel());
    strengthCardModel7 = createModel(context, () => StrengthCardModel());
    strengthCardModel8 = createModel(context, () => StrengthCardModel());
    strengthCardModel9 = createModel(context, () => StrengthCardModel());
    strengthCardModel10 = createModel(context, () => StrengthCardModel());
  }

  @override
  void dispose() {
    strengthCardModel1.dispose();
    strengthCardModel2.dispose();
    strengthCardModel3.dispose();
    strengthCardModel4.dispose();
    strengthCardModel5.dispose();
    strengthCardModel6.dispose();
    strengthCardModel7.dispose();
    strengthCardModel8.dispose();
    strengthCardModel9.dispose();
    strengthCardModel10.dispose();
  }
}
