import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'exercise_card2_model.dart';
export 'exercise_card2_model.dart';

class ExerciseCard2Widget extends StatefulWidget {
  const ExerciseCard2Widget({
    super.key,
    required this.icon,
    required this.title,
  });

  final String? icon;
  final String? title;

  @override
  State<ExerciseCard2Widget> createState() => _ExerciseCard2WidgetState();
}

class _ExerciseCard2WidgetState extends State<ExerciseCard2Widget> {
  late ExerciseCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseCard2Model());
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
        context.pushNamed(
          'ExerciseDetails',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 200),
            ),
          },
        );
      },
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground2,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    widget.icon!,
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: FlutterFlowTheme.of(context).bgColor,
                size: 28.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
