import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'day_model.dart';
export 'day_model.dart';

class DayWidget extends StatefulWidget {
  const DayWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  final String? title;
  final Widget? icon;
  final Color? color;

  @override
  State<DayWidget> createState() => _DayWidgetState();
}

class _DayWidgetState extends State<DayWidget> {
  late DayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayModel());
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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            valueOrDefault<String>(
              widget!.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).iconColor,
                  letterSpacing: 0.0,
                ),
          ),
          Container(
            width: 26.0,
            height: 26.0,
            decoration: BoxDecoration(
              color: widget!.color,
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget!.icon!,
            ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
