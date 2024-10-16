import '/components/custom_button/custom_button_widget.dart';
import '/components/fitness_tools_card/fitness_tools_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fitness_tools_model.dart';
export 'fitness_tools_model.dart';

class FitnessToolsWidget extends StatefulWidget {
  const FitnessToolsWidget({super.key});

  @override
  State<FitnessToolsWidget> createState() => _FitnessToolsWidgetState();
}

class _FitnessToolsWidgetState extends State<FitnessToolsWidget>
    with TickerProviderStateMixin {
  late FitnessToolsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FitnessToolsModel());

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
            begin: Offset(0.0, 320.0),
            end: Offset(0.0, 0.0),
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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground2,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Text(
                  'Fitness Tools',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.fitnessToolsCardModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: FitnessToolsCardWidget(
                      icon: Icon(
                        FFIcons.kbomb,
                        color: FlutterFlowTheme.of(context).iconColor,
                        size: 24.0,
                      ),
                      title: 'BOSU',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.fitnessToolsCardModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: FitnessToolsCardWidget(
                      icon: Icon(
                        Icons.fitness_center_sharp,
                        color: FlutterFlowTheme.of(context).iconColor,
                        size: 24.0,
                      ),
                      title: 'Dumbbell',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.fitnessToolsCardModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: FitnessToolsCardWidget(
                      icon: Icon(
                        Icons.filter_vintage_rounded,
                        color: FlutterFlowTheme.of(context).iconColor,
                        size: 24.0,
                      ),
                      title: 'Foam Roller',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.fitnessToolsCardModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: FitnessToolsCardWidget(
                      icon: Icon(
                        FFIcons.kweight,
                        color: FlutterFlowTheme.of(context).iconColor,
                        size: 24.0,
                      ),
                      title: 'Kettlebell',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.fitnessToolsCardModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: FitnessToolsCardWidget(
                      icon: Icon(
                        FFIcons.kbarbell,
                        color: FlutterFlowTheme.of(context).iconColor,
                        size: 24.0,
                      ),
                      title: 'Barbell',
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            FFIcons.kplus,
                            color: FlutterFlowTheme.of(context).iconColor,
                            size: 26.0,
                          ),
                          Text(
                            'Short',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ].divide(SizedBox(height: 24.0)),
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
                  child: CustomButtonWidget(
                    title: 'Done',
                  ),
                ),
              ),
            ].divide(SizedBox(height: 20.0)),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
