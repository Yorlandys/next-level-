import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exercies_card_model.dart';
export 'exercies_card_model.dart';

class ExerciesCardWidget extends StatefulWidget {
  const ExerciesCardWidget({
    super.key,
    required this.cover,
    required this.title,
  });

  final String? cover;
  final String? title;

  @override
  State<ExerciesCardWidget> createState() => _ExerciesCardWidgetState();
}

class _ExerciesCardWidgetState extends State<ExerciesCardWidget> {
  late ExerciesCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciesCardModel());
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
        context.pushNamed(
          'Instructions',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 200),
            ),
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 1.5,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground2,
              ),
            ),
            Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground2,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        widget!.cover!,
                        width: 66.0,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.title,
                        'na',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            color: FlutterFlowTheme.of(context).info,
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
