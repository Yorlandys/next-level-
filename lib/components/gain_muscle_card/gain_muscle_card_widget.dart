import '/components/indicator/indicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'gain_muscle_card_model.dart';
export 'gain_muscle_card_model.dart';

class GainMuscleCardWidget extends StatefulWidget {
  const GainMuscleCardWidget({
    super.key,
    required this.cover,
    required this.weeks,
    required this.title,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
  });

  final String? cover;
  final String? weeks;
  final String? title;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;

  @override
  State<GainMuscleCardWidget> createState() => _GainMuscleCardWidgetState();
}

class _GainMuscleCardWidgetState extends State<GainMuscleCardWidget> {
  late GainMuscleCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GainMuscleCardModel());
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
          'AboutWorkout',
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
        width: 200.0,
        height: 260.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground2,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 1.0),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                        child: Image.network(
                          widget.cover!,
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color:
                            FlutterFlowTheme.of(context).secondaryBackground2,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 25.0,
                            color: Color(0xFF0C3D7D),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                            spreadRadius: 50.0,
                          )
                        ],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 24.0,
                    decoration: BoxDecoration(
                      color: const Color(0x66212121),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.weeks,
                              'na',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'na',
                    ),
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.indicatorModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: IndicatorWidget(
                            title: 'Cardio',
                            color1: FlutterFlowTheme.of(context).primary,
                            color2: widget.color1!,
                            color3: widget.color4!,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.indicatorModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: IndicatorWidget(
                            title: 'Strength',
                            color1: FlutterFlowTheme.of(context).accent1,
                            color2: widget.color2!,
                            color3: widget.color3!,
                          ),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
