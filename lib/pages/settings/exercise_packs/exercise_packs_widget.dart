import '/components/exercise_card/exercise_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'exercise_packs_model.dart';
export 'exercise_packs_model.dart';

class ExercisePacksWidget extends StatefulWidget {
  const ExercisePacksWidget({super.key});

  @override
  State<ExercisePacksWidget> createState() => _ExercisePacksWidgetState();
}

class _ExercisePacksWidgetState extends State<ExercisePacksWidget> {
  late ExercisePacksModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExercisePacksModel());
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
                      height: 220.0,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: [
                          ClipRRect(
                            child: Container(
                              height: 420.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/g9wr7d90oida/o9.jpg',
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
                                          blurRadius: 80.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground2,
                                          offset: const Offset(
                                            0.0,
                                            2.0,
                                          ),
                                          spreadRadius: 120.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Exercise Packs',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 26.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.0,
                                        ),
                                  ),
                                  wrapWithModel(
                                    model: _model.exerciseCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ExerciseCardWidget(
                                      icon: Icon(
                                        FFIcons.kyoga,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      title: 'Yoga',
                                      subtitle: '127 exxercises (58 MB)',
                                      icon2: Icon(
                                        FFIcons.ktrash,
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
                                        size: 24.0,
                                      ),
                                      download: true,
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 20.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fitness Tools',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  fontSize: 16.0,
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
                                  model: _model.exerciseCardModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.kbomb,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    title: 'BOSU',
                                    subtitle: '67 exercises (13 MB)',
                                    icon2: Icon(
                                      FFIcons.ktrash,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: true,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.kbarbell,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    title: 'Barbell',
                                    subtitle: '29 exercises (4 MB)',
                                    icon2: Icon(
                                      FFIcons.ktrash,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: true,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      Icons.fitness_center,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    title: 'Dumbbell',
                                    subtitle: '66 exercises (9 MB)',
                                    icon2: Icon(
                                      FFIcons.ktrash,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: true,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      Icons.filter_vintage,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    title: 'Foam Roller',
                                    subtitle: '58 exercises (8 MB)',
                                    icon2: Icon(
                                      FFIcons.ktrash,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: true,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.kweight,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    title: 'Kettlebell',
                                    subtitle: '61 exercises (10 MB)',
                                    icon2: Icon(
                                      FFIcons.ktrash,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: true,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel7,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.kballBaseball,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    title: 'Medicine Ball',
                                    subtitle: '61 exercises (12 MB)',
                                    icon2: Icon(
                                      FFIcons.kdownload,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: false,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel8,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.ktelescope,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    title: 'Pull Up Bar',
                                    subtitle: '5 exercises (1 MB)',
                                    icon2: Icon(
                                      FFIcons.kdownload,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: false,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel9,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.kresize,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    title: 'Resistance Band',
                                    subtitle: '31 exercises (4 MB)',
                                    icon2: Icon(
                                      FFIcons.kdownload,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: false,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel10,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.klamp,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    title: 'suspension System',
                                    subtitle: '98 exercises (17 MB)',
                                    icon2: Icon(
                                      FFIcons.kdownload,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: false,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground2,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.exerciseCardModel11,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ExerciseCardWidget(
                                    icon: Icon(
                                      FFIcons.kballVolleyball,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    title: 'Swiss Ball',
                                    subtitle: '53 exercises (13 MB)',
                                    icon2: Icon(
                                      FFIcons.kdownload,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24.0,
                                    ),
                                    download: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ]
                      .divide(const SizedBox(height: 24.0))
                      .addToEnd(const SizedBox(height: 32.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
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
                    decoration: const BoxDecoration(
                      color: Color(0x80BDBDBD),
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
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
