import '/components/fetcher/fetcher_widget.dart';
import '/components/goal/goal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'plan_ready_widget.dart' show PlanReadyWidget;
import 'package:flutter/material.dart';

class PlanReadyModel extends FlutterFlowModel<PlanReadyWidget> {
  ///  Local state fields for this page.

  String? gender;

  ///  State fields for stateful widgets in this page.

  // Model for Goal component.
  late GoalModel goalModel1;
  // Model for Goal component.
  late GoalModel goalModel2;
  // Model for Goal component.
  late GoalModel goalModel3;
  // Model for Fetcher component.
  late FetcherModel fetcherModel1;
  // Model for Fetcher component.
  late FetcherModel fetcherModel2;
  // Model for Fetcher component.
  late FetcherModel fetcherModel3;
  // Model for Fetcher component.
  late FetcherModel fetcherModel4;
  // Model for Fetcher component.
  late FetcherModel fetcherModel5;

  @override
  void initState(BuildContext context) {
    goalModel1 = createModel(context, () => GoalModel());
    goalModel2 = createModel(context, () => GoalModel());
    goalModel3 = createModel(context, () => GoalModel());
    fetcherModel1 = createModel(context, () => FetcherModel());
    fetcherModel2 = createModel(context, () => FetcherModel());
    fetcherModel3 = createModel(context, () => FetcherModel());
    fetcherModel4 = createModel(context, () => FetcherModel());
    fetcherModel5 = createModel(context, () => FetcherModel());
  }

  @override
  void dispose() {
    goalModel1.dispose();
    goalModel2.dispose();
    goalModel3.dispose();
    fetcherModel1.dispose();
    fetcherModel2.dispose();
    fetcherModel3.dispose();
    fetcherModel4.dispose();
    fetcherModel5.dispose();
  }
}
