import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'feedback_card_model.dart';
export 'feedback_card_model.dart';

class FeedbackCardWidget extends StatefulWidget {
  const FeedbackCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.select,
  });

  final String? image;
  final String? title;
  final String? select;

  @override
  State<FeedbackCardWidget> createState() => _FeedbackCardWidgetState();
}

class _FeedbackCardWidgetState extends State<FeedbackCardWidget> {
  late FeedbackCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedbackCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground2,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: valueOrDefault<Color>(
            widget.select == widget.title
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground2,
            FlutterFlowTheme.of(context).secondaryBackground2,
          ),
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.network(
                  widget.image!,
                  width: 40.0,
                  height: 40.0,
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
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ].divide(const SizedBox(width: 16.0)),
            ),
            if (widget.select == widget.title)
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.kcheck,
                    color: FlutterFlowTheme.of(context).primaryBackground2,
                    size: 20.0,
                  ),
                ),
              ),
          ].divide(const SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
