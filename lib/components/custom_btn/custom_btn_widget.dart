import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_btn_model.dart';
export 'custom_btn_model.dart';

class CustomBtnWidget extends StatefulWidget {
  const CustomBtnWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget? icon;
  final String? title;

  @override
  State<CustomBtnWidget> createState() => _CustomBtnWidgetState();
}

class _CustomBtnWidgetState extends State<CustomBtnWidget> {
  late CustomBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomBtnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          widget.icon!,
          Text(
            valueOrDefault<String>(
              widget.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).iconColor,
                  fontSize: 13.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 4.0)),
      ),
    );
  }
}
