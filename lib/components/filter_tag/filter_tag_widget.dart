import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_tag_model.dart';
export 'filter_tag_model.dart';

class FilterTagWidget extends StatefulWidget {
  const FilterTagWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget? icon;
  final String? title;

  @override
  State<FilterTagWidget> createState() => _FilterTagWidgetState();
}

class _FilterTagWidgetState extends State<FilterTagWidget> {
  late FilterTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterTagModel());
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
        _model.set = !_model.set;
        safeSetState(() {});
      },
      child: Container(
        height: 34.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            _model.set
                ? Color(0xFF1976F7)
                : FlutterFlowTheme.of(context).secondaryBackground2,
            FlutterFlowTheme.of(context).secondaryBackground2,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget!.icon!,
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
