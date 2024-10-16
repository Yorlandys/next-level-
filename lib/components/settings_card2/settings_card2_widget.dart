import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'settings_card2_model.dart';
export 'settings_card2_model.dart';

class SettingsCard2Widget extends StatefulWidget {
  const SettingsCard2Widget({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget? icon;
  final String? title;

  @override
  State<SettingsCard2Widget> createState() => _SettingsCard2WidgetState();
}

class _SettingsCard2WidgetState extends State<SettingsCard2Widget> {
  late SettingsCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsCard2Model());
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
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: FlutterFlowTheme.of(context).bgColor,
              size: 28.0,
            ),
          ],
        ),
      ),
    );
  }
}
