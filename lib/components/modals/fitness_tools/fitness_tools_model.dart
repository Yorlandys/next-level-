import '/components/custom_button/custom_button_widget.dart';
import '/components/fitness_tools_card/fitness_tools_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'fitness_tools_widget.dart' show FitnessToolsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitnessToolsModel extends FlutterFlowModel<FitnessToolsWidget> {
  ///  Local state fields for this component.

  String duration = 'Medium';

  ///  State fields for stateful widgets in this component.

  // Model for FitnessToolsCard component.
  late FitnessToolsCardModel fitnessToolsCardModel1;
  // Model for FitnessToolsCard component.
  late FitnessToolsCardModel fitnessToolsCardModel2;
  // Model for FitnessToolsCard component.
  late FitnessToolsCardModel fitnessToolsCardModel3;
  // Model for FitnessToolsCard component.
  late FitnessToolsCardModel fitnessToolsCardModel4;
  // Model for FitnessToolsCard component.
  late FitnessToolsCardModel fitnessToolsCardModel5;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    fitnessToolsCardModel1 =
        createModel(context, () => FitnessToolsCardModel());
    fitnessToolsCardModel2 =
        createModel(context, () => FitnessToolsCardModel());
    fitnessToolsCardModel3 =
        createModel(context, () => FitnessToolsCardModel());
    fitnessToolsCardModel4 =
        createModel(context, () => FitnessToolsCardModel());
    fitnessToolsCardModel5 =
        createModel(context, () => FitnessToolsCardModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    fitnessToolsCardModel1.dispose();
    fitnessToolsCardModel2.dispose();
    fitnessToolsCardModel3.dispose();
    fitnessToolsCardModel4.dispose();
    fitnessToolsCardModel5.dispose();
    customButtonModel.dispose();
  }
}
