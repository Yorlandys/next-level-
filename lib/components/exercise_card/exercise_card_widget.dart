import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exercise_card_model.dart';
export 'exercise_card_model.dart';

class ExerciseCardWidget extends StatefulWidget {
  const ExerciseCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.icon2,
    bool? download,
  }) : this.download = download ?? false;

  final Widget? icon;
  final String? title;
  final String? subtitle;
  final Widget? icon2;
  final bool download;

  @override
  State<ExerciseCardWidget> createState() => _ExerciseCardWidgetState();
}

class _ExerciseCardWidgetState extends State<ExerciseCardWidget> {
  late ExerciseCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        _model.download = !_model.download;
        safeSetState(() {});
      },
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground2,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  widget!.icon!,
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget!.title,
                              'na',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          if (widget!.download == true)
                            Container(
                              width: 18.0,
                              height: 18.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kcheck,
                                  color: FlutterFlowTheme.of(context).bgColor,
                                  size: 18.0,
                                ),
                              ),
                            ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.subtitle,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).iconColor,
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Builder(
                builder: (context) {
                  if (_model.download) {
                    return Icon(
                      FFIcons.ktrash,
                      color: FlutterFlowTheme.of(context).iconColor,
                      size: 24.0,
                    );
                  } else {
                    return widget!.icon2!;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
