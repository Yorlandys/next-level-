import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resistance_model.dart';
export 'resistance_model.dart';

class ResistanceWidget extends StatefulWidget {
  const ResistanceWidget({super.key});

  @override
  State<ResistanceWidget> createState() => _ResistanceWidgetState();
}

class _ResistanceWidgetState extends State<ResistanceWidget> {
  late ResistanceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResistanceModel());
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
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: Color(0xFF6C444F),
                ),
              ),
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: Color(0xFF904A48),
                ),
              ),
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: Color(0xFFCD533E),
                ),
              ),
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: Color(0xFFEA603C),
                ),
              ),
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFF8762),
                ),
              ),
            ],
          ),
          Text(
            'Resistance Intensity',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).info,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ].divide(SizedBox(width: 14.0)),
      ),
    );
  }
}
