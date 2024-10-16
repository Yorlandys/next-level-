import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'rest_model.dart';
export 'rest_model.dart';

class RestWidget extends StatefulWidget {
  const RestWidget({super.key});

  @override
  State<RestWidget> createState() => _RestWidgetState();
}

class _RestWidgetState extends State<RestWidget> {
  late RestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestModel());
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 30.0,
            height: 2.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).bgColor,
            ),
          ),
          Text(
            'Rest: 30 s',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).iconColor,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Container(
            width: 30.0,
            height: 2.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).bgColor,
            ),
          ),
        ].divide(const SizedBox(width: 16.0)),
      ),
    );
  }
}
