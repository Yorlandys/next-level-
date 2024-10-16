import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'workout_performance_model.dart';
export 'workout_performance_model.dart';

class WorkoutPerformanceWidget extends StatefulWidget {
  const WorkoutPerformanceWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
  });

  final String? title;
  final Widget? icon;
  final String? value;

  @override
  State<WorkoutPerformanceWidget> createState() =>
      _WorkoutPerformanceWidgetState();
}

class _WorkoutPerformanceWidgetState extends State<WorkoutPerformanceWidget> {
  late WorkoutPerformanceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutPerformanceModel());
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            valueOrDefault<String>(
              widget.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).customColor1,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.icon!,
              Text(
                valueOrDefault<String>(
                  widget.value,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ].divide(const SizedBox(width: 4.0)),
          ),
        ].divide(const SizedBox(height: 6.0)),
      ),
    );
  }
}
