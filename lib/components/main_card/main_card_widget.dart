import '/components/indicator/indicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_card_model.dart';
export 'main_card_model.dart';

class MainCardWidget extends StatefulWidget {
  const MainCardWidget({super.key});

  @override
  State<MainCardWidget> createState() => _MainCardWidgetState();
}

class _MainCardWidgetState extends State<MainCardWidget> {
  late MainCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainCardModel());
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
        width: double.infinity,
        height: 320.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground2,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 1.0),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        child: Image.network(
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/aa65sx2o878d/i2.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color:
                            FlutterFlowTheme.of(context).secondaryBackground2,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 60.0,
                            color: Color(0xFF0C3D7D),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                            spreadRadius: 90.0,
                          )
                        ],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Your perssonal plan',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: const Color(0x66212121),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '12 weeks',
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
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Text(
                    'Full Body Gainer',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        wrapWithModel(
                          model: _model.indicatorModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: IndicatorWidget(
                            title: 'Cardio',
                            color1: FlutterFlowTheme.of(context).primary,
                            color2: FlutterFlowTheme.of(context).bgColor,
                            color3: FlutterFlowTheme.of(context).bgColor,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.indicatorModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: IndicatorWidget(
                            title: 'Strength',
                            color1: FlutterFlowTheme.of(context).accent1,
                            color2: FlutterFlowTheme.of(context).accent1,
                            color3: FlutterFlowTheme.of(context).accent1,
                          ),
                        ),
                      ].divide(const SizedBox(width: 20.0)),
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
