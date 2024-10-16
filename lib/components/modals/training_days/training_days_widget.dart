import '/components/custom_button/custom_button_widget.dart';
import '/components/day_selector/day_selector_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'training_days_model.dart';
export 'training_days_model.dart';

class TrainingDaysWidget extends StatefulWidget {
  const TrainingDaysWidget({super.key});

  @override
  State<TrainingDaysWidget> createState() => _TrainingDaysWidgetState();
}

class _TrainingDaysWidgetState extends State<TrainingDaysWidget>
    with TickerProviderStateMixin {
  late TrainingDaysModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrainingDaysModel());

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
        height: 360.0,
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
                  'Training Days',
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
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.daySelectorModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: const DaySelectorWidget(
                              title: 'SUN',
                            ),
                          ),
                        ),
                        Expanded(
                          child: wrapWithModel(
                            model: _model.daySelectorModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: const DaySelectorWidget(
                              title: 'MON',
                            ),
                          ),
                        ),
                        Expanded(
                          child: wrapWithModel(
                            model: _model.daySelectorModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: const DaySelectorWidget(
                              title: 'TUE',
                            ),
                          ),
                        ),
                        Expanded(
                          child: wrapWithModel(
                            model: _model.daySelectorModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: const DaySelectorWidget(
                              title: 'WED',
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 6.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.daySelectorModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: const DaySelectorWidget(
                              title: 'THU',
                            ),
                          ),
                        ),
                        Expanded(
                          child: wrapWithModel(
                            model: _model.daySelectorModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: const DaySelectorWidget(
                              title: 'FRI',
                            ),
                          ),
                        ),
                        Expanded(
                          child: wrapWithModel(
                            model: _model.daySelectorModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: const DaySelectorWidget(
                              title: 'SAT',
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(width: 6.0))
                          .addToStart(const SizedBox(width: 44.0))
                          .addToEnd(const SizedBox(width: 44.0)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Reminder get updated accordingly.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).iconColor,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 6.0)),
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
                    title: 'Save',
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
