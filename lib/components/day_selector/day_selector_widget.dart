import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'day_selector_model.dart';
export 'day_selector_model.dart';

class DaySelectorWidget extends StatefulWidget {
  const DaySelectorWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<DaySelectorWidget> createState() => _DaySelectorWidgetState();
}

class _DaySelectorWidgetState extends State<DaySelectorWidget> {
  late DaySelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DaySelectorModel());
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
        _model.select = !_model.select;
        safeSetState(() {});
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Stack(
          alignment: AlignmentDirectional(1.0, -1.0),
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      valueOrDefault<Color>(
                        _model.select
                            ? Color(0xFFE8FF2D)
                            : FlutterFlowTheme.of(context).bgColor,
                        FlutterFlowTheme.of(context).bgColor,
                      ),
                      valueOrDefault<Color>(
                        _model.select
                            ? Color(0xFF83EB00)
                            : FlutterFlowTheme.of(context).bgColor,
                        FlutterFlowTheme.of(context).bgColor,
                      )
                    ],
                    stops: [0.3, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground2,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.title,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (_model.select == true)
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
