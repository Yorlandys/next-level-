import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'workout_duration_model.dart';
export 'workout_duration_model.dart';

class WorkoutDurationWidget extends StatefulWidget {
  const WorkoutDurationWidget({super.key});

  @override
  State<WorkoutDurationWidget> createState() => _WorkoutDurationWidgetState();
}

class _WorkoutDurationWidgetState extends State<WorkoutDurationWidget>
    with TickerProviderStateMixin {
  late WorkoutDurationModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutDurationModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 320.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 320.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground2,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Text(
                  'Workout Duration',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.duration = 'Short';
                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  FFIcons.ktimeDuration15,
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  size: 26.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Short',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      '10-15 min',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 4.0)),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                            Container(
                              width: 24.0,
                              height: 24.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      _model.duration == 'Short'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.transparent,
                                      Colors.transparent,
                                    ),
                                    valueOrDefault<Color>(
                                      _model.duration == 'Short'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.transparent,
                                      Colors.transparent,
                                    )
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(1.0, 0.0),
                                  end: const AlignmentDirectional(-1.0, 0),
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.duration == 'Short'
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).bgColor,
                                    FlutterFlowTheme.of(context).bgColor,
                                  ),
                                  width: 0.0,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kcheck,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground2,
                                  size: 22.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.duration = 'Medium';
                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  FFIcons.ktimeDuration30,
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  size: 26.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Medium',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      '15-30 min',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 4.0)),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                            Container(
                              width: 24.0,
                              height: 24.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      _model.duration == 'Medium'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.transparent,
                                      Colors.transparent,
                                    ),
                                    valueOrDefault<Color>(
                                      _model.duration == 'Medium'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.transparent,
                                      Colors.transparent,
                                    )
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(1.0, 0.0),
                                  end: const AlignmentDirectional(-1.0, 0),
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.duration == 'Medium'
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).bgColor,
                                    FlutterFlowTheme.of(context).bgColor,
                                  ),
                                  width: 0.0,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kcheck,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground2,
                                  size: 22.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.duration = 'Long';
                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  FFIcons.ktimeDuration45,
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  size: 26.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Long',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      '30-45 min',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 4.0)),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                            Container(
                              width: 24.0,
                              height: 24.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    valueOrDefault<Color>(
                                      _model.duration == 'Long'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.transparent,
                                      Colors.transparent,
                                    ),
                                    valueOrDefault<Color>(
                                      _model.duration == 'Long'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.transparent,
                                      Colors.transparent,
                                    )
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(1.0, 0.0),
                                  end: const AlignmentDirectional(-1.0, 0),
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.duration == 'Long'
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).bgColor,
                                    FlutterFlowTheme.of(context).bgColor,
                                  ),
                                  width: 0.0,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kcheck,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground2,
                                  size: 22.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: wrapWithModel(
                  model: _model.customButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const CustomButtonWidget(
                    title: 'Done',
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 20.0)),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
