import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'user_review_model.dart';
export 'user_review_model.dart';

class UserReviewWidget extends StatefulWidget {
  const UserReviewWidget({
    super.key,
    required this.name,
    required this.comment,
  });

  final String? name;
  final String? comment;

  @override
  State<UserReviewWidget> createState() => _UserReviewWidgetState();
}

class _UserReviewWidgetState extends State<UserReviewWidget> {
  late UserReviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserReviewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x07000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget.name,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            RatingBar.builder(
              onRatingUpdate: (newValue) =>
                  safeSetState(() => _model.ratingBarValue = newValue),
              itemBuilder: (context, index) => Icon(
                Icons.star_rate,
                color: FlutterFlowTheme.of(context).warning,
              ),
              direction: Axis.horizontal,
              initialRating: _model.ratingBarValue ??= 5.0,
              unratedColor: FlutterFlowTheme.of(context).accent4,
              itemCount: 5,
              itemSize: 20.0,
              glowColor: FlutterFlowTheme.of(context).warning,
            ),
            Text(
              valueOrDefault<String>(
                widget.comment,
                'na',
              ),
              maxLines: 5,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(const SizedBox(height: 2.0)),
        ),
      ),
    );
  }
}
