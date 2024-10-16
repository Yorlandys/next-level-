import '/components/strength_card/strength_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'workout_list_model.dart';
export 'workout_list_model.dart';

class WorkoutListWidget extends StatefulWidget {
  const WorkoutListWidget({super.key});

  @override
  State<WorkoutListWidget> createState() => _WorkoutListWidgetState();
}

class _WorkoutListWidgetState extends State<WorkoutListWidget> {
  late WorkoutListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutListModel());
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
                      height: 240.0,
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
                                  Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/zg1dga2upb1u/s39.jpg',
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 30.0,
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
                            alignment: AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Strength',
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
                                    'Improve strenght and endurance. Choose a muscle\ngroup you want to target and see results shortly',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .iconColor,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
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
                        children: [
                          wrapWithModel(
                            model: _model.strengthCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: StrengthCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/a0fxcqbchgt4/i29.jpg',
                              title: 'Full Body',
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abs & Core',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground2,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.strengthCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/xw1h9bd2z3j1/i30.jpg',
                                        title: 'Insane Six Pack',
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground2,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.strengthCardModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/cex7wyc1n0ze/i31.jpg',
                                        title: 'Complex Core',
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground2,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.strengthCardModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/367cj7b3l3nb/i37.jpg',
                                        title: 'Strong Back',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'lower Body',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground2,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.strengthCardModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/zdqg9eba8drq/i35.jpg',
                                        title: 'Complex Lower body',
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground2,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.strengthCardModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/23vtq6w979qa/i34.jpg',
                                        title: 'Exlosive Power jumps',
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground2,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.strengthCardModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/nxc7rjnew9zx/i33.jpg',
                                        title: 'Amazing Butt',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abs & Core',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground2,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.strengthCardModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/x6giwj5sopsz/i28.jpg',
                                        title: 'Complex Upper Body',
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground2,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.strengthCardModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/3asbi75osmqz/i36.jpg',
                                        title: 'Chest & Arms',
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground2,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.strengthCardModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StrengthCardWidget(
                                        cover:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/sk7ps2t6z3jx/i38.jpg',
                                        title: 'Shoulders & Upper Back',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ]
                            .divide(SizedBox(height: 24.0))
                            .addToEnd(SizedBox(height: 32.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
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
