import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'categories_card_model.dart';
export 'categories_card_model.dart';

class CategoriesCardWidget extends StatefulWidget {
  const CategoriesCardWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final String? icon;
  final String? title;

  @override
  State<CategoriesCardWidget> createState() => _CategoriesCardWidgetState();
}

class _CategoriesCardWidgetState extends State<CategoriesCardWidget> {
  late CategoriesCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground2,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.network(
                  widget!.icon!,
                  width: 26.0,
                  height: 26.0,
                  fit: BoxFit.cover,
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
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
            Icon(
              FFIcons.kchevronRight,
              color: FlutterFlowTheme.of(context).bgColor,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
