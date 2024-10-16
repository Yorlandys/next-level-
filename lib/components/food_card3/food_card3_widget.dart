import '/components/custom_btn/custom_btn_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'food_card3_model.dart';
export 'food_card3_model.dart';

class FoodCard3Widget extends StatefulWidget {
  const FoodCard3Widget({
    super.key,
    required this.cover,
    required this.title,
    required this.time,
    required this.kcal,
  });

  final String? cover;
  final String? title;
  final String? time;
  final String? kcal;

  @override
  State<FoodCard3Widget> createState() => _FoodCard3WidgetState();
}

class _FoodCard3WidgetState extends State<FoodCard3Widget> {
  late FoodCard3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodCard3Model());
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
      height: 230.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground2,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
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
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground2,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0xFF0C3D7D),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                          spreadRadius: 30.0,
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
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.title,
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
                          title: widget.time!,
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
                          title: widget.kcal!,
                        ),
                      ),
                    ].divide(const SizedBox(width: 14.0)),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  Container(
                    width: 34.0,
                    height: 34.0,
                    decoration: const BoxDecoration(
                      color: Color(0x7F1553A5),
                      shape: BoxShape.circle,
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                    child: ToggleIcon(
                      onPressed: () async {
                        safeSetState(() => _model.save = !_model.save);
                      },
                      value: _model.save,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
