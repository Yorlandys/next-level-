import '/components/result/result_widget.dart';
import '/components/user_review/user_review_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscription_widget.dart' show SubscriptionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SubscriptionModel extends FlutterFlowModel<SubscriptionWidget> {
  ///  Local state fields for this page.

  String plan = '12 Month';

  ///  State fields for stateful widgets in this page.

  // Model for UserReview component.
  late UserReviewModel userReviewModel1;
  // Model for UserReview component.
  late UserReviewModel userReviewModel2;
  // Model for UserReview component.
  late UserReviewModel userReviewModel3;
  // Model for UserReview component.
  late UserReviewModel userReviewModel4;
  // Model for Result component.
  late ResultModel resultModel1;
  // Model for Result component.
  late ResultModel resultModel2;
  // Model for Result component.
  late ResultModel resultModel3;
  // Model for Result component.
  late ResultModel resultModel4;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  @override
  void initState(BuildContext context) {
    userReviewModel1 = createModel(context, () => UserReviewModel());
    userReviewModel2 = createModel(context, () => UserReviewModel());
    userReviewModel3 = createModel(context, () => UserReviewModel());
    userReviewModel4 = createModel(context, () => UserReviewModel());
    resultModel1 = createModel(context, () => ResultModel());
    resultModel2 = createModel(context, () => ResultModel());
    resultModel3 = createModel(context, () => ResultModel());
    resultModel4 = createModel(context, () => ResultModel());
  }

  @override
  void dispose() {
    userReviewModel1.dispose();
    userReviewModel2.dispose();
    userReviewModel3.dispose();
    userReviewModel4.dispose();
    resultModel1.dispose();
    resultModel2.dispose();
    resultModel3.dispose();
    resultModel4.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
  }
}
