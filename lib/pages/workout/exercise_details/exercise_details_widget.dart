import '/components/exercies_card/exercies_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'exercise_details_model.dart';
export 'exercise_details_model.dart';

class ExerciseDetailsWidget extends StatefulWidget {
  const ExerciseDetailsWidget({super.key});

  @override
  State<ExerciseDetailsWidget> createState() => _ExerciseDetailsWidgetState();
}

class _ExerciseDetailsWidgetState extends State<ExerciseDetailsWidget> {
  late ExerciseDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseDetailsModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground2,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0x00000000),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController1,
                                  child: ExpandablePanel(
                                    header: Container(
                                      width: 100.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground2,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Standing',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: 0.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.exerciesCardModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6vncsxilqbws/v17.gif',
                                            title: 'Side Plank',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/jjbo5c849y61/v18.gif',
                                            title: 'Leg Lifts',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/y50dq8n9zrvp/v12.gif',
                                            title: 'Teaser',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/3g0husa4p72n/v15.gif',
                                            title: 'March & Clap',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                                            title: 'Seated Core Twist',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/fmaasga13xr8/v3.gif',
                                            title: 'Dynamic Rollups',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6j3910zqstf5/v7.gif',
                                            title: 'Bicycle Crunches',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ypxuvph5gcni/v9.gif',
                                            title: 'V Sit Rowing',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/kfxrzdp3gcjz/v21.gif',
                                            title: 'Dynamic Rollups',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel10,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/7wsxgdny3n5i/v19.gif',
                                            title: 'Heal Touches',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel11,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/zadg1h4vy4nh/v8.gif',
                                            title: 'Corkscrew',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel12,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                                            title: 'Windmill',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel13,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/cn0hl9kr8iit/v24.gif',
                                            title: 'Sanding Torso Jomp',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel14,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/be65x7s020lo/v25.gif',
                                            title: 'Bird Dog',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel15,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/aopm8jjidvf9/v16.gif',
                                            title: 'Heisman Lunges',
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FFIcons.kchevronDown,
                                      collapseIcon: FFIcons.kchevronUp,
                                      iconSize: 24.0,
                                      iconColor:
                                          FlutterFlowTheme.of(context).bgColor,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 0.0, 12.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground2,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0x00000000),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController2,
                                  child: ExpandablePanel(
                                    header: Container(
                                      width: 100.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground2,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'On the floor',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: 0.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.exerciesCardModel16,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6vncsxilqbws/v17.gif',
                                            title: 'Side Plank',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel17,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/jjbo5c849y61/v18.gif',
                                            title: 'Leg Lifts',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel18,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/y50dq8n9zrvp/v12.gif',
                                            title: 'Teaser',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel19,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/3g0husa4p72n/v15.gif',
                                            title: 'March & Clap',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel20,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                                            title: 'Seated Core Twist',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel21,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/fmaasga13xr8/v3.gif',
                                            title: 'Dynamic Rollups',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel22,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/6j3910zqstf5/v7.gif',
                                            title: 'Bicycle Crunches',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel23,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ypxuvph5gcni/v9.gif',
                                            title: 'V Sit Rowing',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel24,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/kfxrzdp3gcjz/v21.gif',
                                            title: 'Dynamic Rollups',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel25,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/7wsxgdny3n5i/v19.gif',
                                            title: 'Heal Touches',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel26,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/zadg1h4vy4nh/v8.gif',
                                            title: 'Corkscrew',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel27,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m88otul11ox1/v11.gif',
                                            title: 'Windmill',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel28,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/cn0hl9kr8iit/v24.gif',
                                            title: 'Sanding Torso Jomp',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel29,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/be65x7s020lo/v25.gif',
                                            title: 'Bird Dog',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exerciesCardModel30,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExerciesCardWidget(
                                            cover:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/aopm8jjidvf9/v16.gif',
                                            title: 'Heisman Lunges',
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FFIcons.kchevronDown,
                                      collapseIcon: FFIcons.kchevronUp,
                                      iconSize: 24.0,
                                      iconColor:
                                          FlutterFlowTheme.of(context).bgColor,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 0.0, 12.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ]
                      .addToStart(const SizedBox(height: 66.0))
                      .addToEnd(const SizedBox(height: 32.0)),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground2,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8.0,
                      color: FlutterFlowTheme.of(context).primaryBackground2,
                      offset: const Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 4.0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
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
                                color: Color(0x67BDBDBD),
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
                          Text(
                            'Abs & Core',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].addToEnd(const SizedBox(width: 32.0)),
                      ),
                    ]
                        .divide(const SizedBox(height: 20.0))
                        .addToEnd(const SizedBox(height: 20.0)),
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
