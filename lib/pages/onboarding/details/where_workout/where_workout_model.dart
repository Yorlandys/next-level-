import '/components/habits_card/habits_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'where_workout_widget.dart' show WhereWorkoutWidget;
import 'package:flutter/material.dart';

class WhereWorkoutModel extends FlutterFlowModel<WhereWorkoutWidget> {
  ///  Local state fields for this page.

  String? gender;

  ///  State fields for stateful widgets in this page.

  // Model for HabitsCard component.
  late HabitsCardModel habitsCardModel1;
  // Model for HabitsCard component.
  late HabitsCardModel habitsCardModel2;
  // Model for HabitsCard component.
  late HabitsCardModel habitsCardModel3;
  // Model for HabitsCard component.
  late HabitsCardModel habitsCardModel4;

  @override
  void initState(BuildContext context) {
    habitsCardModel1 = createModel(context, () => HabitsCardModel());
    habitsCardModel2 = createModel(context, () => HabitsCardModel());
    habitsCardModel3 = createModel(context, () => HabitsCardModel());
    habitsCardModel4 = createModel(context, () => HabitsCardModel());
  }

  @override
  void dispose() {
    habitsCardModel1.dispose();
    habitsCardModel2.dispose();
    habitsCardModel3.dispose();
    habitsCardModel4.dispose();
  }
}
