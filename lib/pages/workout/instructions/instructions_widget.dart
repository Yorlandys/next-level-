import '/components/resistance/resistance_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'instructions_model.dart';
export 'instructions_model.dart';

class InstructionsWidget extends StatefulWidget {
  const InstructionsWidget({super.key});

  @override
  State<InstructionsWidget> createState() => _InstructionsWidgetState();
}

class _InstructionsWidgetState extends State<InstructionsWidget> {
  late InstructionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InstructionsModel());
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
                          Text(
                            'One-Arm Deadlift',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Category: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextSpan(
                                      text: 'Lower Body, Abs & Core, Cardio',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/sdgp6a5fij6u/ezgif.com-crop_(1).gif',
                                  width: double.infinity,
                                  height: 210.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ].divide(const SizedBox(height: 20.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hints',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      'Keep your back straight and stable. Do not overarch your lower back. Fold forward through the hips. Spread your weight evenly under your big toe, little toe, and heel. Squeeze your abdominal muscles. Squeeze your glutes hard on top of the movement. Focus on a proper technique, rather than heavier weight.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Breathing',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      'Breathe deeply. Do not hold your breath.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muscle Focus',
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
                              Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/m9vtkjzv5n3x/s40.jpg',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              wrapWithModel(
                                model: _model.resistanceModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const ResistanceWidget(),
                              ),
                            ].divide(const SizedBox(height: 16.0)),
                          ),
                        ].divide(const SizedBox(height: 28.0)),
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
                            'Instructions',
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
