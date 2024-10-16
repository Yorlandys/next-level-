import '/components/custom_btn/custom_btn_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'food_card_model.dart';
export 'food_card_model.dart';

class FoodCardWidget extends StatefulWidget {
  const FoodCardWidget({
    super.key,
    required this.cover,
    required this.title,
    required this.time,
    required this.kcel,
  });

  final String? cover;
  final String? title;
  final String? time;
  final String? kcel;

  @override
  State<FoodCardWidget> createState() => _FoodCardWidgetState();
}

class _FoodCardWidgetState extends State<FoodCardWidget> {
  late FoodCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground2,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 1.0),
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
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                      child: Image.network(
                        widget!.cover!,
                        width: double.infinity,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground2,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30.0,
                          color: Color(0xFF0C3D7D),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                          spreadRadius: 50.0,
                        )
                      ],
                      borderRadius: BorderRadius.only(
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
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget!.title,
                    'na',
                  ),
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.customBtnModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: CustomBtnWidget(
                        icon: Icon(
                          Icons.timer_sharp,
                          color: FlutterFlowTheme.of(context).iconColor,
                          size: 16.0,
                        ),
                        title: widget!.time!,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.customBtnModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: CustomBtnWidget(
                        icon: Icon(
                          Icons.local_fire_department,
                          color: FlutterFlowTheme.of(context).iconColor,
                          size: 16.0,
                        ),
                        title: widget!.kcel!,
                      ),
                    ),
                  ].divide(SizedBox(width: 14.0)),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
              child: Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: Color(0x7F1553A5),
                  shape: BoxShape.circle,
                ),
                child: ToggleIcon(
                  onPressed: () async {
                    safeSetState(() => _model.toggle = !_model.toggle);
                  },
                  value: _model.toggle,
                  onIcon: Icon(
                    FFIcons.kheart,
                    color: FlutterFlowTheme.of(context).error,
                    size: 22.0,
                  ),
                  offIcon: Icon(
                    FFIcons.kheart,
                    color: FlutterFlowTheme.of(context).info,
                    size: 22.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
