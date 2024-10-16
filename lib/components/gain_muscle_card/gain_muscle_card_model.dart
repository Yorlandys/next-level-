import '/components/indicator/indicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gain_muscle_card_widget.dart' show GainMuscleCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GainMuscleCardModel extends FlutterFlowModel<GainMuscleCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Indicator component.
  late IndicatorModel indicatorModel1;
  // Model for Indicator component.
  late IndicatorModel indicatorModel2;

  @override
  void initState(BuildContext context) {
    indicatorModel1 = createModel(context, () => IndicatorModel());
    indicatorModel2 = createModel(context, () => IndicatorModel());
  }

  @override
  void dispose() {
    indicatorModel1.dispose();
    indicatorModel2.dispose();
  }
}
