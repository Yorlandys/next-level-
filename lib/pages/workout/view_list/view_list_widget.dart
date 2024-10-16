import '/components/exercise_details_2/exercise_details2_widget.dart';
import '/components/rest/rest_widget.dart';
import '/components/workout/workout_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_list_model.dart';
export 'view_list_model.dart';

class ViewListWidget extends StatefulWidget {
  const ViewListWidget({super.key});

  @override
  State<ViewListWidget> createState() => _ViewListWidgetState();
}

class _ViewListWidgetState extends State<ViewListWidget> {
  late ViewListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewListModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
                      height: 260.0,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          ClipRRect(
                            child: Container(
                              height: 420.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/367cj7b3l3nb/i37.jpg',
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground2,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 40.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground2,
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                          spreadRadius: 60.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Full Body',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 26.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'Ab Workout that will get you a shredded six-pack in no time.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .iconColor,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.exerciseDetails2Model1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ExerciseDetails2Widget(
                                          icon: Icon(
                                            Icons.timer,
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            size: 24.0,
                                          ),
                                          title: '13 minutes',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.exerciseDetails2Model2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ExerciseDetails2Widget(
                                          icon: Icon(
                                            Icons.local_fire_department_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            size: 24.0,
                                          ),
                                          title: '94 calories',
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
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
                          Text(
                            'Exercise List',
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
                          if (_model.warmup == true)
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        color: Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController,
                                          child: ExpandablePanel(
                                            header: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 64.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground2,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .sports_gymnastics_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Warmup',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Text(
                                                      '5 minutes to prevent injuries',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColor,
                                                                fontSize: 13.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 4.0)),
                                                ),
                                              ].divide(SizedBox(width: 12.0)),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.workoutModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: WorkoutWidget(
                                                    cover:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/hg4pkd2vdv1g/v31.gif',
                                                    title: 'Side Plank',
                                                    duration: '40 s',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.workoutModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: WorkoutWidget(
                                                    cover:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/yc6k0s432hsw/v30.gif',
                                                    title: 'Side Plank',
                                                    duration: '40 s',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.workoutModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: WorkoutWidget(
                                                    cover:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/3e8dbzzfwvoh/v28.gif',
                                                    title: 'Side Plank',
                                                    duration: '40 s',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.workoutModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: WorkoutWidget(
                                                    cover:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/hz06krydfcpr/v29.gif',
                                                    title: 'Side Plank',
                                                    duration: '40 s',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.workoutModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: WorkoutWidget(
                                                    cover:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ldbqwmi5a10m/v27.gif',
                                                    title: 'Side Plank',
                                                    duration: '40 s',
                                                  ),
                                                ),
                                              ]
                                                  .divide(
                                                      SizedBox(height: 16.0))
                                                  .addToStart(
                                                      SizedBox(height: 16.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: true,
                                              tapBodyToCollapse: true,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronDown,
                                              collapseIcon: FFIcons.kchevronUp,
                                              iconSize: 24.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .bgColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 4.0),
                                  child: wrapWithModel(
                                    model: _model.restModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: RestWidget(),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'Instructions',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 200),
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6vncsxilqbws/v17.gif',
                                              width: 64.0,
                                              height: 50.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Side Plank',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Container(
                                                width: 36.0,
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '40 s',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      FFIcons.kplayerPlay,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              wrapWithModel(
                                model: _model.workoutModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/jjbo5c849y61/v18.gif',
                                  title: 'Leg Lifts',
                                  duration: '30 s',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/y50dq8n9zrvp/v12.gif',
                                  title: 'Teaser',
                                  duration: '30 s',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 4.0),
                                child: wrapWithModel(
                                  model: _model.restModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RestWidget(),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/3g0husa4p72n/v15.gif',
                                  title: 'March & Clap',
                                  duration: '30 s',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                                  title: 'Seated Core Twist',
                                  duration: '40 s',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/fmaasga13xr8/v3.gif',
                                  title: 'Dynamic Rollups',
                                  duration: '40 s',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 4.0),
                                child: wrapWithModel(
                                  model: _model.restModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RestWidget(),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6j3910zqstf5/v7.gif',
                                  title: 'Bicycle Crunches',
                                  duration: '40 s',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ypxuvph5gcni/v9.gif',
                                  title: 'V Sit Rowing',
                                  duration: '30 s',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/kfxrzdp3gcjz/v21.gif',
                                  title: 'Dynamic Rollups',
                                  duration: '30 s',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 4.0),
                                child: wrapWithModel(
                                  model: _model.restModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RestWidget(),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/7wsxgdny3n5i/v19.gif',
                                  title: 'Heal Touches',
                                  duration: '40 s',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/zadg1h4vy4nh/v8.gif',
                                  title: 'Corkscrew',
                                  duration: '30 s',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.workoutModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: WorkoutWidget(
                                  cover:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                                  title: 'Windmill',
                                  duration: '40 s',
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 24.0))
                      .addToEnd(SizedBox(height: 32.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: Color(0x67BDBDBD),
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Icon(
                        FFIcons.kchevronLeft,
                        color: FlutterFlowTheme.of(context).info,
                        size: 26.0,
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
