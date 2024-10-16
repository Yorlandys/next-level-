import '/components/custom_button/custom_button_widget.dart';
import '/components/review_exercise/review_exercise_widget.dart';
import '/components/workout_performance/workout_performance_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'workout_completed_widget.dart' show WorkoutCompletedWidget;
import 'package:flutter/material.dart';

class WorkoutCompletedModel extends FlutterFlowModel<WorkoutCompletedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WorkoutPerformance component.
  late WorkoutPerformanceModel workoutPerformanceModel1;
  // Model for WorkoutPerformance component.
  late WorkoutPerformanceModel workoutPerformanceModel2;
  // Model for WorkoutPerformance component.
  late WorkoutPerformanceModel workoutPerformanceModel3;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel1;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel2;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel3;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel4;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel5;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel6;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel7;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel8;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel9;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel10;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel11;
  // Model for ReviewExercise component.
  late ReviewExerciseModel reviewExerciseModel12;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    workoutPerformanceModel1 =
        createModel(context, () => WorkoutPerformanceModel());
    workoutPerformanceModel2 =
        createModel(context, () => WorkoutPerformanceModel());
    workoutPerformanceModel3 =
        createModel(context, () => WorkoutPerformanceModel());
    reviewExerciseModel1 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel2 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel3 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel4 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel5 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel6 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel7 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel8 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel9 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel10 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel11 = createModel(context, () => ReviewExerciseModel());
    reviewExerciseModel12 = createModel(context, () => ReviewExerciseModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    workoutPerformanceModel1.dispose();
    workoutPerformanceModel2.dispose();
    workoutPerformanceModel3.dispose();
    reviewExerciseModel1.dispose();
    reviewExerciseModel2.dispose();
    reviewExerciseModel3.dispose();
    reviewExerciseModel4.dispose();
    reviewExerciseModel5.dispose();
    reviewExerciseModel6.dispose();
    reviewExerciseModel7.dispose();
    reviewExerciseModel8.dispose();
    reviewExerciseModel9.dispose();
    reviewExerciseModel10.dispose();
    reviewExerciseModel11.dispose();
    reviewExerciseModel12.dispose();
    customButtonModel.dispose();
  }
}
