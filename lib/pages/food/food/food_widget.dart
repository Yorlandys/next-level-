import '/components/food_card/food_card_widget.dart';
import '/components/food_card2/food_card2_widget.dart';
import '/components/icon_title/icon_title_widget.dart';
import '/components/top_categories/top_categories_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'food_model.dart';
export 'food_model.dart';

class FoodWidget extends StatefulWidget {
  const FoodWidget({super.key});

  @override
  State<FoodWidget> createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> with TickerProviderStateMixin {
  late FoodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodModel());

    animationsMap.addAll({
      'iconTitleOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'foodCardOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'foodCardOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOutQuint,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconTitleOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 900.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 250.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 250.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 700.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'topCategoriesOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 1200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 1200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 1300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 1300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 1400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 1400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground2,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Food',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 28.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'Favorites',
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
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF0F4388),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                      child: Icon(
                        FFIcons.kheart,
                        color: FlutterFlowTheme.of(context).info,
                        size: 26.0,
                      ),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation1']!),
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
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 200),
                      ),
                    },
                  );
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF0F4388),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.filter_alt,
                      color: FlutterFlowTheme.of(context).info,
                      size: 26.0,
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation2']!),
              InkWell(
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
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 200),
                      ),
                    },
                  );
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF0F4388),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      FFIcons.ksearch,
                      color: FlutterFlowTheme.of(context).info,
                      size: 26.0,
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation3']!),
            ].divide(SizedBox(width: 12.0)),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.iconTitleModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: IconTitleWidget(
                        title: 'Get Inspired',
                        icon: Icon(
                          FFIcons.kbulb,
                          color: FlutterFlowTheme.of(context).iconColor,
                          size: 20.0,
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['iconTitleOnPageLoadAnimation1']!),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.foodCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/q2i6ggmzoaw4/f1.jpg',
                              title: 'Beef Taco-Stuffed potatoes',
                              time: '60 min',
                              kcel: '373 kcal',
                            ),
                          ).animateOnPageLoad(
                              animationsMap['foodCardOnPageLoadAnimation1']!),
                          wrapWithModel(
                            model: _model.foodCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/yt9imt4txnan/f2.jpg',
                              title: 'Beef Taco-Stuffed potatoes',
                              time: '60 min',
                              kcel: '373 kcal',
                            ),
                          ).animateOnPageLoad(
                              animationsMap['foodCardOnPageLoadAnimation2']!),
                          wrapWithModel(
                            model: _model.foodCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/bmtafktfmts2/f4.jpg',
                              title: 'Beef Taco-Stuffed potatoes',
                              time: '60 min',
                              kcel: '373 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCardModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ove4yfnh14l0/f5.jpg',
                              title: 'Beef Taco-Stuffed potatoes',
                              time: '60 min',
                              kcel: '373 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCardModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/t5938uuordvf/f3.jpg',
                              title: 'Beef Taco-Stuffed potatoes',
                              time: '60 min',
                              kcel: '373 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCardModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/5qzjqp76wlkp/f6.jpg',
                              title: 'Beef Taco-Stuffed potatoes',
                              time: '60 min',
                              kcel: '373 kcal',
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 12.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.iconTitleModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: IconTitleWidget(
                        title: 'Top categories',
                        icon: Icon(
                          FFIcons.kstar,
                          color: FlutterFlowTheme.of(context).iconColor,
                          size: 14.0,
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['iconTitleOnPageLoadAnimation2']!),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                          childAspectRatio: 1.95,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ma95oohwox84/c1.png',
                                title: 'Breakfast',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation1']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/1lbab5ucta84/c2.png',
                                title: 'Lunch',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation2']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/vb76e2a4t80z/c3.png',
                                title: 'Dinner',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation3']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/gkrbqas69pqf/c4.png',
                                title: 'Suger Free',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation4']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/0qhpuzgptwp5/c5.png',
                                title: 'Low Calories',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation5']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/fkajl8bgzrqv/c6.png',
                                title: 'Vegitarian',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation6']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel7,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/xhq82odeqd6i/c7.png',
                                title: 'Snack',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation7']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel8,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/17cacqljb3nk/c8.png',
                                title: 'Salad',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation8']!),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'ViewAll',
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
                            child: wrapWithModel(
                              model: _model.topCategoriesModel9,
                              updateCallback: () => safeSetState(() {}),
                              child: TopCategoriesWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/wr91nm92yeam/c9.png',
                                title: 'Soup',
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'topCategoriesOnPageLoadAnimation9']!),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'ViewAll',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 200),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          wrapWithModel(
                            model: _model.iconTitleModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: IconTitleWidget(
                              title: 'Breakfast',
                              icon: Icon(
                                FFIcons.kcoffee,
                                color: FlutterFlowTheme.of(context).iconColor,
                                size: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'More',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.foodCard2Model1,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ove4yfnh14l0/f5.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model2,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/dr53xkapigz1/f8.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model3,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/gxci59slamhc/f9.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model4,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/5pw96yyc36e2/f11.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model5,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/a0fy254uiqjs/f10.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model6,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/qzd8rtkxnjnp/f13.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 12.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'ViewAll',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 200),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          wrapWithModel(
                            model: _model.iconTitleModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: IconTitleWidget(
                              title: 'Lunch',
                              icon: Icon(
                                Icons.lunch_dining_outlined,
                                color: FlutterFlowTheme.of(context).iconColor,
                                size: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'More',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.foodCard2Model7,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/dwv9bs6beegg/f12.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model8,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/msxoe4spoo9c/f14.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model9,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/gxci59slamhc/f9.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model10,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/5pw96yyc36e2/f11.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model11,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/a0fy254uiqjs/f10.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model12,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/qzd8rtkxnjnp/f13.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 12.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'ViewAll',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 200),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          wrapWithModel(
                            model: _model.iconTitleModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: IconTitleWidget(
                              title: 'Dinner',
                              icon: Icon(
                                Icons.dinner_dining_outlined,
                                color: FlutterFlowTheme.of(context).iconColor,
                                size: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'More',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.foodCard2Model13,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/qzd8rtkxnjnp/f13.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model14,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/a0fy254uiqjs/f10.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model15,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/gxci59slamhc/f9.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model16,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/5pw96yyc36e2/f11.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model17,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/a0fy254uiqjs/f10.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model18,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/qzd8rtkxnjnp/f13.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 12.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'ViewAll',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 200),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          wrapWithModel(
                            model: _model.iconTitleModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: IconTitleWidget(
                              title: 'Soup',
                              icon: Icon(
                                FFIcons.kbowl,
                                color: FlutterFlowTheme.of(context).iconColor,
                                size: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'More',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.foodCard2Model19,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/5pw96yyc36e2/f11.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model20,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/gxci59slamhc/f9.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model21,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/gxci59slamhc/f9.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model22,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/5pw96yyc36e2/f11.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model23,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/a0fy254uiqjs/f10.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.foodCard2Model24,
                            updateCallback: () => safeSetState(() {}),
                            child: FoodCard2Widget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/qzd8rtkxnjnp/f13.jpg',
                              title: 'Cottage cheese Pancakes',
                              time: '20 min',
                              kcal: '478 kcal',
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 12.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ]
                  .divide(SizedBox(height: 32.0))
                  .addToStart(SizedBox(height: 16.0))
                  .addToEnd(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
