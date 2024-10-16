import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'indicator_model.dart';
export 'indicator_model.dart';

class IndicatorWidget extends StatefulWidget {
  const IndicatorWidget({
    super.key,
    required this.title,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  final String? title;
  final Color? color1;
  final Color? color2;
  final Color? color3;

  @override
  State<IndicatorWidget> createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget> {
  late IndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndicatorModel());
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 7.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: widget!.color1,
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          Container(
            width: 7.0,
            height: 11.0,
            decoration: BoxDecoration(
              color: widget!.color2,
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          Container(
            width: 7.0,
            height: 16.0,
            decoration: BoxDecoration(
              color: widget!.color3,
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.title,
                'nna',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).secondaryText2,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ].divide(SizedBox(width: 3.0)),
      ),
    );
  }
}
