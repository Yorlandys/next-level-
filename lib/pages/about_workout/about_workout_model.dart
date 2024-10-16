import '/components/about_content/about_content_widget.dart';
import '/components/body_about/body_about_widget.dart';
import '/components/custom_button/custom_button_widget.dart';
import '/components/day/day_widget.dart';
import '/components/modals/recovery_duration/recovery_duration_widget.dart';
import '/components/modals/training_days/training_days_widget.dart';
import '/components/modals/warmup_duration/warmup_duration_widget.dart';
import '/components/modals/workout_duration/workout_duration_widget.dart';
import '/components/user_review_card/user_review_card_widget.dart';
import '/components/warmup_card/warmup_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'about_workout_widget.dart' show AboutWorkoutWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutWorkoutModel extends FlutterFlowModel<AboutWorkoutWidget> {
  ///  Local state fields for this page.

  String? plan = '';

  ///  State fields for stateful widgets in this page.

  // Model for AboutContent component.
  late AboutContentModel aboutContentModel1;
  // Model for AboutContent component.
  late AboutContentModel aboutContentModel2;
  // Model for AboutContent component.
  late AboutContentModel aboutContentModel3;
  // Model for AboutContent component.
  late AboutContentModel aboutContentModel4;
  // Model for BodyAbout component.
  late BodyAboutModel bodyAboutModel1;
  // Model for BodyAbout component.
  late BodyAboutModel bodyAboutModel2;
  // Model for BodyAbout component.
  late BodyAboutModel bodyAboutModel3;
  // Model for BodyAbout component.
  late BodyAboutModel bodyAboutModel4;
  // Model for Day component.
  late DayModel dayModel1;
  // Model for Day component.
  late DayModel dayModel2;
  // Model for Day component.
  late DayModel dayModel3;
  // Model for Day component.
  late DayModel dayModel4;
  // Model for Day component.
  late DayModel dayModel5;
  // Model for Day component.
  late DayModel dayModel6;
  // Model for Day component.
  late DayModel dayModel7;
  // Model for WarmupCard component.
  late WarmupCardModel warmupCardModel1;
  // Model for WarmupCard component.
  late WarmupCardModel warmupCardModel2;
  // Model for WarmupCard component.
  late WarmupCardModel warmupCardModel3;
  // Model for WarmupCard component.
  late WarmupCardModel warmupCardModel4;
  // Model for UserReviewCard component.
  late UserReviewCardModel userReviewCardModel1;
  // Model for UserReviewCard component.
  late UserReviewCardModel userReviewCardModel2;
  // Model for UserReviewCard component.
  late UserReviewCardModel userReviewCardModel3;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    aboutContentModel1 = createModel(context, () => AboutContentModel());
    aboutContentModel2 = createModel(context, () => AboutContentModel());
    aboutContentModel3 = createModel(context, () => AboutContentModel());
    aboutContentModel4 = createModel(context, () => AboutContentModel());
    bodyAboutModel1 = createModel(context, () => BodyAboutModel());
    bodyAboutModel2 = createModel(context, () => BodyAboutModel());
    bodyAboutModel3 = createModel(context, () => BodyAboutModel());
    bodyAboutModel4 = createModel(context, () => BodyAboutModel());
    dayModel1 = createModel(context, () => DayModel());
    dayModel2 = createModel(context, () => DayModel());
    dayModel3 = createModel(context, () => DayModel());
    dayModel4 = createModel(context, () => DayModel());
    dayModel5 = createModel(context, () => DayModel());
    dayModel6 = createModel(context, () => DayModel());
    dayModel7 = createModel(context, () => DayModel());
    warmupCardModel1 = createModel(context, () => WarmupCardModel());
    warmupCardModel2 = createModel(context, () => WarmupCardModel());
    warmupCardModel3 = createModel(context, () => WarmupCardModel());
    warmupCardModel4 = createModel(context, () => WarmupCardModel());
    userReviewCardModel1 = createModel(context, () => UserReviewCardModel());
    userReviewCardModel2 = createModel(context, () => UserReviewCardModel());
    userReviewCardModel3 = createModel(context, () => UserReviewCardModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    aboutContentModel1.dispose();
    aboutContentModel2.dispose();
    aboutContentModel3.dispose();
    aboutContentModel4.dispose();
    bodyAboutModel1.dispose();
    bodyAboutModel2.dispose();
    bodyAboutModel3.dispose();
    bodyAboutModel4.dispose();
    dayModel1.dispose();
    dayModel2.dispose();
    dayModel3.dispose();
    dayModel4.dispose();
    dayModel5.dispose();
    dayModel6.dispose();
    dayModel7.dispose();
    warmupCardModel1.dispose();
    warmupCardModel2.dispose();
    warmupCardModel3.dispose();
    warmupCardModel4.dispose();
    userReviewCardModel1.dispose();
    userReviewCardModel2.dispose();
    userReviewCardModel3.dispose();
    customButtonModel.dispose();
  }
}
