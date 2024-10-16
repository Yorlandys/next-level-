import '/components/custom_button/custom_button_widget.dart';
import '/components/modals/exercise_feedback/exercise_feedback_widget.dart';
import '/components/review_exercise/review_exercise_widget.dart';
import '/components/workout_performance/workout_performance_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'workout_completed_model.dart';
export 'workout_completed_model.dart';

class WorkoutCompletedWidget extends StatefulWidget {
  const WorkoutCompletedWidget({super.key});

  @override
  State<WorkoutCompletedWidget> createState() => _WorkoutCompletedWidgetState();
}

class _WorkoutCompletedWidgetState extends State<WorkoutCompletedWidget> {
  late WorkoutCompletedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutCompletedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground2,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 420.0,
                      child: Stack(
                        children: [
                          ClipRRect(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground2,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.network(
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/367cj7b3l3nb/i37.jpg',
                                        width: double.infinity,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground2,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 120.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground2,
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                          spreadRadius: 200.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0x9A083168),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 20.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x33FFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                FFIcons.kshare3,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 22.0,
                                              ),
                                              Text(
                                                'Share',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 6.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Insane Six Pack',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColor,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          'Workout Completed!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Text(
                                          'Great job, keep going',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground2,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: wrapWithModel(
                                            model:
                                                _model.workoutPerformanceModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: WorkoutPerformanceWidget(
                                              title: 'MINUTES',
                                              icon: Icon(
                                                Icons.timer,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                              value: '6',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: wrapWithModel(
                                            model:
                                                _model.workoutPerformanceModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: WorkoutPerformanceWidget(
                                              title: 'EXERCIES',
                                              icon: Icon(
                                                Icons.sports_gymnastics_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                              value: '11',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: wrapWithModel(
                                            model:
                                                _model.workoutPerformanceModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: WorkoutPerformanceWidget(
                                              title: 'CALORIES',
                                              icon: Icon(
                                                Icons.timer,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                              value: '89',
                                            ),
                                          ),
                                        ),
                                      ]
                                          .addToStart(SizedBox(width: 12.0))
                                          .addToEnd(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground2,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  14.0, 14.0, 0.0, 0.0),
                                          child: Text(
                                            'How was your workout?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 17.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          height: 26.0,
                                          decoration: BoxDecoration(),
                                          child: Container(
                                            width: double.infinity,
                                            child: Slider(
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              inactiveColor:
                                                  FlutterFlowTheme.of(context)
                                                      .bgColor,
                                              min: 0.0,
                                              max: 8.0,
                                              value: _model.sliderValue ??= 0.0,
                                              label: _model.sliderValue
                                                  ?.toString(),
                                              divisions: 4,
                                              onChanged: (newValue) {
                                                safeSetState(() => _model
                                                    .sliderValue = newValue);
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  14.0, 0.0, 14.0, 14.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Easy',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColor,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Perfect',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Text(
                                                    'Hard',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColor,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 20.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 6.0),
                            child: Text(
                              'Review exercises',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6vncsxilqbws/v17.gif',
                              title: 'Side Plank',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/jjbo5c849y61/v18.gif',
                              title: 'Leg Lifts',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/y50dq8n9zrvp/v12.gif',
                              title: 'Teaser',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/3g0husa4p72n/v15.gif',
                              title: 'March & Clap',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                              title: 'Seated Core Twist',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/fmaasga13xr8/v3.gif',
                              title: 'Dynamic Rollups',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6j3910zqstf5/v7.gif',
                              title: 'Bicycle Crunches',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ypxuvph5gcni/v9.gif',
                              title: 'V Sit Rowing',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel9,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/kfxrzdp3gcjz/v21.gif',
                              title: 'Dynamic Rollups',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel10,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/7wsxgdny3n5i/v19.gif',
                              title: 'Heal Touches',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel11,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/zadg1h4vy4nh/v8.gif',
                              title: 'Corkscrew',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewExerciseModel12,
                            updateCallback: () => safeSetState(() {}),
                            child: ReviewExerciseWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                              title: 'Windmill',
                              popup: () async {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x34000000),
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ExerciseFeedbackWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 24.0))
                      .addToEnd(SizedBox(height: 100.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground2,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color:
                              FlutterFlowTheme.of(context).primaryBackground2,
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                          spreadRadius: 16.0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'Workouts',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 200),
                              ),
                            },
                          );
                        },
                        child: wrapWithModel(
                          model: _model.customButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CustomButtonWidget(
                            title: 'Continue',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
