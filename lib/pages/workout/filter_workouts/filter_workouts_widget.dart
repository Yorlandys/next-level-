import '/components/custom_button/custom_button_widget.dart';
import '/components/filters/filters_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_workouts_model.dart';
export 'filter_workouts_model.dart';

class FilterWorkoutsWidget extends StatefulWidget {
  const FilterWorkoutsWidget({super.key});

  @override
  State<FilterWorkoutsWidget> createState() => _FilterWorkoutsWidgetState();
}

class _FilterWorkoutsWidgetState extends State<FilterWorkoutsWidget> {
  late FilterWorkoutsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterWorkoutsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground2,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Filter',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              wrapWithModel(
                                model: _model.filtersModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Abs & Core',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Upper Body',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Lower Body',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Cardio',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Stretching',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Yoga',
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fitness Tool',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              wrapWithModel(
                                model: _model.filtersModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'BodyWeiht',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'BOSU',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Barbell',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Dumbbell',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Foam Roller',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Kettlebell',
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stance',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              wrapWithModel(
                                model: _model.filtersModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Standing',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'On the floor',
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Difficulty',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              wrapWithModel(
                                model: _model.filtersModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Easy',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Medium',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel17,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Hard',
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'impact Level',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              wrapWithModel(
                                model: _model.filtersModel18,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Low',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel19,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Normal',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.filtersModel20,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'High',
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Noise Level',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).iconColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              wrapWithModel(
                                model: _model.filtersModel21,
                                updateCallback: () => safeSetState(() {}),
                                child: const FiltersWidget(
                                  title: 'Quiet',
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ].divide(const SizedBox(height: 24.0)),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground2,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color:
                              FlutterFlowTheme.of(context).primaryBackground2,
                          offset: const Offset(
                            0.0,
                            2.0,
                          ),
                          spreadRadius: 16.0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: wrapWithModel(
                          model: _model.customButtonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const CustomButtonWidget(
                            title: 'Done',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground2,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8.0,
                      color: FlutterFlowTheme.of(context).primaryBackground2,
                      offset: const Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 4.0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: const BoxDecoration(
                                color: Color(0x67BDBDBD),
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kchevronLeft,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 26.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Filter',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Reset',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ]
                        .divide(const SizedBox(height: 20.0))
                        .addToEnd(const SizedBox(height: 6.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
