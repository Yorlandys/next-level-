import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fetcher_model.dart';
export 'fetcher_model.dart';

class FetcherWidget extends StatefulWidget {
  const FetcherWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<FetcherWidget> createState() => _FetcherWidgetState();
}

class _FetcherWidgetState extends State<FetcherWidget> {
  late FetcherModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FetcherModel());
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
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Icon(
                FFIcons.kcheck,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 16.0,
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 12.0)),
      ),
    );
  }
}
