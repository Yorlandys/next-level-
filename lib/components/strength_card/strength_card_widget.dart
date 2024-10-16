import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'strength_card_model.dart';
export 'strength_card_model.dart';

class StrengthCardWidget extends StatefulWidget {
  const StrengthCardWidget({
    super.key,
    required this.cover,
    required this.title,
  });

  final String? cover;
  final String? title;

  @override
  State<StrengthCardWidget> createState() => _StrengthCardWidgetState();
}

class _StrengthCardWidgetState extends State<StrengthCardWidget> {
  late StrengthCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StrengthCardModel());
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
          'WorkoutDetails',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 200),
            ),
          },
        );
      },
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground2,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.network(
                  widget.cover!,
                  width: 86.0,
                  height: double.infinity,
                  fit: BoxFit.cover,
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
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ].divide(const SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
