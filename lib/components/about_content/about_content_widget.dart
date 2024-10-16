import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'about_content_model.dart';
export 'about_content_model.dart';

class AboutContentWidget extends StatefulWidget {
  const AboutContentWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<AboutContentWidget> createState() => _AboutContentWidgetState();
}

class _AboutContentWidgetState extends State<AboutContentWidget> {
  late AboutContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutContentModel());
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
          Text(
            valueOrDefault<String>(
              widget.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).info,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 12.0)),
      ),
    );
  }
}
