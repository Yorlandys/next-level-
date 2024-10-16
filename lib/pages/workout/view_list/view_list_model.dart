import '/components/exercise_details_2/exercise_details2_widget.dart';
import '/components/rest/rest_widget.dart';
import '/components/workout/workout_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'view_list_widget.dart' show ViewListWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewListModel extends FlutterFlowModel<ViewListWidget> {
  ///  Local state fields for this page.

  String? plan = '';

  bool warmup = false;

  ///  State fields for stateful widgets in this page.

  // Model for ExerciseDetails_2 component.
  late ExerciseDetails2Model exerciseDetails2Model1;
  // Model for ExerciseDetails_2 component.
  late ExerciseDetails2Model exerciseDetails2Model2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for Workout component.
  late WorkoutModel workoutModel1;
  // Model for Workout component.
  late WorkoutModel workoutModel2;
  // Model for Workout component.
  late WorkoutModel workoutModel3;
  // Model for Workout component.
  late WorkoutModel workoutModel4;
  // Model for Workout component.
  late WorkoutModel workoutModel5;
  // Model for Rest component.
  late RestModel restModel1;
  // Model for Workout component.
  late WorkoutModel workoutModel6;
  // Model for Workout component.
  late WorkoutModel workoutModel7;
  // Model for Rest component.
  late RestModel restModel2;
  // Model for Workout component.
  late WorkoutModel workoutModel8;
  // Model for Workout component.
  late WorkoutModel workoutModel9;
  // Model for Workout component.
  late WorkoutModel workoutModel10;
  // Model for Rest component.
  late RestModel restModel3;
  // Model for Workout component.
  late WorkoutModel workoutModel11;
  // Model for Workout component.
  late WorkoutModel workoutModel12;
  // Model for Workout component.
  late WorkoutModel workoutModel13;
  // Model for Rest component.
  late RestModel restModel4;
  // Model for Workout component.
  late WorkoutModel workoutModel14;
  // Model for Workout component.
  late WorkoutModel workoutModel15;
  // Model for Workout component.
  late WorkoutModel workoutModel16;

  @override
  void initState(BuildContext context) {
    exerciseDetails2Model1 =
        createModel(context, () => ExerciseDetails2Model());
    exerciseDetails2Model2 =
        createModel(context, () => ExerciseDetails2Model());
    workoutModel1 = createModel(context, () => WorkoutModel());
    workoutModel2 = createModel(context, () => WorkoutModel());
    workoutModel3 = createModel(context, () => WorkoutModel());
    workoutModel4 = createModel(context, () => WorkoutModel());
    workoutModel5 = createModel(context, () => WorkoutModel());
    restModel1 = createModel(context, () => RestModel());
    workoutModel6 = createModel(context, () => WorkoutModel());
    workoutModel7 = createModel(context, () => WorkoutModel());
    restModel2 = createModel(context, () => RestModel());
    workoutModel8 = createModel(context, () => WorkoutModel());
    workoutModel9 = createModel(context, () => WorkoutModel());
    workoutModel10 = createModel(context, () => WorkoutModel());
    restModel3 = createModel(context, () => RestModel());
    workoutModel11 = createModel(context, () => WorkoutModel());
    workoutModel12 = createModel(context, () => WorkoutModel());
    workoutModel13 = createModel(context, () => WorkoutModel());
    restModel4 = createModel(context, () => RestModel());
    workoutModel14 = createModel(context, () => WorkoutModel());
    workoutModel15 = createModel(context, () => WorkoutModel());
    workoutModel16 = createModel(context, () => WorkoutModel());
  }

  @override
  void dispose() {
    exerciseDetails2Model1.dispose();
    exerciseDetails2Model2.dispose();
    expandableExpandableController.dispose();
    workoutModel1.dispose();
    workoutModel2.dispose();
    workoutModel3.dispose();
    workoutModel4.dispose();
    workoutModel5.dispose();
    restModel1.dispose();
    workoutModel6.dispose();
    workoutModel7.dispose();
    restModel2.dispose();
    workoutModel8.dispose();
    workoutModel9.dispose();
    workoutModel10.dispose();
    restModel3.dispose();
    workoutModel11.dispose();
    workoutModel12.dispose();
    workoutModel13.dispose();
    restModel4.dispose();
    workoutModel14.dispose();
    workoutModel15.dispose();
    workoutModel16.dispose();
  }
}
