import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'exercise_details2_model.dart';
export 'exercise_details2_model.dart';

class ExerciseDetails2Widget extends StatefulWidget {
  const ExerciseDetails2Widget({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget? icon;
  final String? title;

  @override
  State<ExerciseDetails2Widget> createState() => _ExerciseDetails2WidgetState();
}

class _ExerciseDetails2WidgetState extends State<ExerciseDetails2Widget> {
  late ExerciseDetails2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseDetails2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          widget.icon!,
          Text(
            valueOrDefault<String>(
              widget.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).info,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ].divide(const SizedBox(width: 12.0)),
      ),
    );
  }
}
