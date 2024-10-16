import '/components/category/category_widget.dart';
import '/components/food_card3/food_card3_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_all_model.dart';
export 'view_all_model.dart';

class ViewAllWidget extends StatefulWidget {
  const ViewAllWidget({super.key});

  @override
  State<ViewAllWidget> createState() => _ViewAllWidgetState();
}

class _ViewAllWidgetState extends State<ViewAllWidget> {
  late ViewAllModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewAllModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'SearchFood',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                      duration: Duration(milliseconds: 200),
                                    ),
                                  },
                                );
                              },
                              child: wrapWithModel(
                                model: _model.categoryModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryWidget(
                                  icon: Icon(
                                    FFIcons.kheart,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 22.0,
                                  ),
                                  title: 'Breakfast',
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/q2i6ggmzoaw4/f1.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/msxoe4spoo9c/f14.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/qzd8rtkxnjnp/f13.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/5pw96yyc36e2/f11.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/gxci59slamhc/f9.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/t5938uuordvf/f3.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model7,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/bmtafktfmts2/f4.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model8,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/2vknrbx1t5l2/f7.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.foodCard3Model9,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FoodCard3Widget(
                                    cover:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ove4yfnh14l0/f5.jpg',
                                    title: 'Grilled Checken with Vegetables',
                                    time: '30 min',
                                    kcal: '270 kcal',
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ]
                      .addToStart(SizedBox(height: 100.0))
                      .addToEnd(SizedBox(height: 32.0)),
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
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 4.0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                              decoration: BoxDecoration(
                                color: Color(0x67BDBDBD),
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kchevronLeft,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 26.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Recipes',
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
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'FoodFilter',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 200),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Color(0x67BDBDBD),
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kfilter,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 22.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          height: 34.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Search',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color:
                                        FlutterFlowTheme.of(context).iconColor,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFF052146),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              prefixIcon: Icon(
                                FFIcons.ksearch,
                                color: FlutterFlowTheme.of(context).iconColor,
                                size: 20.0,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            cursorColor: FlutterFlowTheme.of(context).info,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 20.0))
                        .addToEnd(SizedBox(height: 6.0)),
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
