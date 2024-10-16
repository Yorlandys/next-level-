import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'result_model.dart';
export 'result_model.dart';

class ResultWidget extends StatefulWidget {
  const ResultWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  late ResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultModel());
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 22.0,
            height: 22.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Icon(
                FFIcons.kcheck,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 18.0,
              ),
            ),
          ),
          Expanded(
            child: Text(
              valueOrDefault<String>(
                widget.title,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ].divide(const SizedBox(width: 12.0)),
      ),
    );
  }
}
