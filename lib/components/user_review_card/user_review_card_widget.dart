import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_review_card_model.dart';
export 'user_review_card_model.dart';

class UserReviewCardWidget extends StatefulWidget {
  const UserReviewCardWidget({
    super.key,
    required this.name,
    required this.comment,
  });

  final String? name;
  final String? comment;

  @override
  State<UserReviewCardWidget> createState() => _UserReviewCardWidgetState();
}

class _UserReviewCardWidgetState extends State<UserReviewCardWidget> {
  late UserReviewCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserReviewCardModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground2,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget!.name,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).info,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
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
              itemPadding: EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
              itemSize: 18.0,
              glowColor: FlutterFlowTheme.of(context).warning,
            ),
            Text(
              valueOrDefault<String>(
                widget!.comment,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).info,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ),
    );
  }
}
