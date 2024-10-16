import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_exercise_model.dart';
export 'review_exercise_model.dart';

class ReviewExerciseWidget extends StatefulWidget {
  const ReviewExerciseWidget({
    super.key,
    required this.cover,
    required this.title,
    required this.popup,
  });

  final String? cover;
  final String? title;
  final Future Function()? popup;

  @override
  State<ReviewExerciseWidget> createState() => _ReviewExerciseWidgetState();
}

class _ReviewExerciseWidgetState extends State<ReviewExerciseWidget> {
  late ReviewExerciseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewExerciseModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  widget!.cover!,
                  width: 66.0,
                  height: 52.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ].divide(SizedBox(width: 14.0)),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ToggleIcon(
                onPressed: () async {
                  safeSetState(() => _model.like = !_model.like);
                },
                value: _model.like,
                onIcon: Icon(
                  FFIcons.kheart,
                  color: FlutterFlowTheme.of(context).info,
                  size: 22.0,
                ),
                offIcon: Icon(
                  FFIcons.kheart,
                  color: FlutterFlowTheme.of(context).bgColor,
                  size: 22.0,
                ),
              ),
              Container(
                width: 2.0,
                height: 18.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).bgColor,
                ),
              ),
              ToggleIcon(
                onPressed: () async {
                  safeSetState(() => _model.set = !_model.set);
                  await widget.popup?.call();
                },
                value: _model.set,
                onIcon: Icon(
                  FFIcons.kthumbUp,
                  color: FlutterFlowTheme.of(context).info,
                  size: 22.0,
                ),
                offIcon: Icon(
                  FFIcons.kthumbUp,
                  color: FlutterFlowTheme.of(context).bgColor,
                  size: 22.0,
                ),
              ),
            ].divide(SizedBox(width: 8.0)).addToEnd(SizedBox(width: 4.0)),
          ),
        ].divide(SizedBox(width: 12.0)),
      ),
    );
  }
}
