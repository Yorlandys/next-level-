import '/components/custom_button/custom_button_widget.dart';
import '/components/custom_switch/custom_switch_widget.dart';
import '/components/filter_tag/filter_tag_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'food_filter_model.dart';
export 'food_filter_model.dart';

class FoodFilterWidget extends StatefulWidget {
  const FoodFilterWidget({super.key});

  @override
  State<FoodFilterWidget> createState() => _FoodFilterWidgetState();
}

class _FoodFilterWidgetState extends State<FoodFilterWidget> {
  late FoodFilterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodFilterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Meals',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
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
                                      model: _model.filterTagModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.breakfast_dining_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Breakfast',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.lunch_dining_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Lunch',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.dinner_dining,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Dinner',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kwood,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Snack',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.spa,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Salad',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kbowl,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Soup',
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 12.0),
                                child: Text(
                                  'Calories',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Stack(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          child: Slider(
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            inactiveColor: Color(0xFF60ADFF),
                                            min: 2.0,
                                            max: 14.0,
                                            value: _model.sliderValue ??= 2.0,
                                            divisions: 6,
                                            onChanged: (newValue) {
                                              newValue = double.parse(
                                                  newValue.toStringAsFixed(2));
                                              safeSetState(() => _model
                                                  .sliderValue = newValue);
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: 20.0,
                                            height: 20.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColor,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      '600+',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .iconColor,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Diet',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
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
                                      model: _model.filterTagModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kpanoramaHorizontal,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Vegetarian',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.egg_alt,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Protein Rich',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kmichelinStarGreen,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Low Carb',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kleaf,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Vegan',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel11,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kfishChristianity,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Pescetarian',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel12,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kbraille,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Low Calories',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel13,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kbabyBottle,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Lactose Free',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel14,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kapple,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Sugar Free',
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Method',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
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
                                      model: _model.filterTagModel15,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.timer_sharp,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Quick',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel16,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.shopping_bag_outlined,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Few Ingredients',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel17,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kthumbUp,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Easy',
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ingredients',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
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
                                      model: _model.filterTagModel18,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kfish,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Fish',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel19,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.flood,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Seafood',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel20,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kclubs,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Nuts',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel21,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.keggs,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Eggs',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel22,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kbottle,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Dairy',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel23,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kpigMoney,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Pork',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel24,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kcookieMan,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Beef',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel25,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          Icons.child_care,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Chicken',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel26,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kbread,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Bread',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel27,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kchartLine,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Pasta',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.filterTagModel28,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FilterTagWidget(
                                        icon: Icon(
                                          FFIcons.kplant,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 18.0,
                                        ),
                                        title: 'Rice',
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Favorites Only',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColor,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                wrapWithModel(
                                  model: _model.customSwitchModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CustomSwitchWidget(
                                    set: () async {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 32.0))
                            .addToEnd(SizedBox(height: 80.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground2,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color:
                              FlutterFlowTheme.of(context).primaryBackground2,
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                          spreadRadius: 16.0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
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
                          child: CustomButtonWidget(
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
