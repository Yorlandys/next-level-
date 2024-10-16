import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_categories_model.dart';
export 'top_categories_model.dart';

class TopCategoriesWidget extends StatefulWidget {
  const TopCategoriesWidget({
    super.key,
    required this.image,
    required this.title,
  });

  final String? image;
  final String? title;

  @override
  State<TopCategoriesWidget> createState() => _TopCategoriesWidgetState();
}

class _TopCategoriesWidgetState extends State<TopCategoriesWidget> {
  late TopCategoriesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopCategoriesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground2,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              widget!.image!,
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
                    color: FlutterFlowTheme.of(context).iconColor,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
