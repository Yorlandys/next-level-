import '/components/day_card/day_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'pick_days_widget.dart' show PickDaysWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PickDaysModel extends FlutterFlowModel<PickDaysWidget> {
  ///  Local state fields for this page.

  String? days = 'Sun';

  ///  State fields for stateful widgets in this page.

  // Model for DayCard component.
  late DayCardModel dayCardModel1;
  // Model for DayCard component.
  late DayCardModel dayCardModel2;
  // Model for DayCard component.
  late DayCardModel dayCardModel3;
  // Model for DayCard component.
  late DayCardModel dayCardModel4;
  // Model for DayCard component.
  late DayCardModel dayCardModel5;
  // Model for DayCard component.
  late DayCardModel dayCardModel6;
  // Model for DayCard component.
  late DayCardModel dayCardModel7;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    dayCardModel1 = createModel(context, () => DayCardModel());
    dayCardModel2 = createModel(context, () => DayCardModel());
    dayCardModel3 = createModel(context, () => DayCardModel());
    dayCardModel4 = createModel(context, () => DayCardModel());
    dayCardModel5 = createModel(context, () => DayCardModel());
    dayCardModel6 = createModel(context, () => DayCardModel());
    dayCardModel7 = createModel(context, () => DayCardModel());
  }

  @override
  void dispose() {
    dayCardModel1.dispose();
    dayCardModel2.dispose();
    dayCardModel3.dispose();
    dayCardModel4.dispose();
    dayCardModel5.dispose();
    dayCardModel6.dispose();
    dayCardModel7.dispose();
  }
}
