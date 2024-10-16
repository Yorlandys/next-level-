import '/components/custom_switch/custom_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'fitness_tools_card_model.dart';
export 'fitness_tools_card_model.dart';

class FitnessToolsCardWidget extends StatefulWidget {
  const FitnessToolsCardWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget? icon;
  final String? title;

  @override
  State<FitnessToolsCardWidget> createState() => _FitnessToolsCardWidgetState();
}

class _FitnessToolsCardWidgetState extends State<FitnessToolsCardWidget> {
  late FitnessToolsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FitnessToolsCardModel());
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
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ].divide(const SizedBox(width: 12.0)),
          ),
          wrapWithModel(
            model: _model.customSwitchModel,
            updateCallback: () => safeSetState(() {}),
            child: CustomSwitchWidget(
              set: () async {},
            ),
          ),
        ].divide(const SizedBox(width: 16.0)),
      ),
    );
  }
}
