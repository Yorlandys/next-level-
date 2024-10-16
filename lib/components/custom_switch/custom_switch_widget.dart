import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_switch_model.dart';
export 'custom_switch_model.dart';

class CustomSwitchWidget extends StatefulWidget {
  const CustomSwitchWidget({
    super.key,
    required this.set,
  });

  final Future Function()? set;

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  late CustomSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomSwitchModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        _model.set = !_model.set;
        safeSetState(() {});
        await widget.set?.call();
      },
      child: Container(
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            _model.set
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).customColor1,
            FlutterFlowTheme.of(context).customColor1,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(
                      valueOrDefault<double>(
                        _model.set ? 1.0 : -1.0,
                        -1.0,
                      ),
                      0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          _model.set ? 0.0 : 4.0,
                          4.0,
                        ),
                        0.0,
                        0.0,
                        0.0),
                    child: Container(
                      width: valueOrDefault<double>(
                        _model.set ? 22.0 : 14.0,
                        14.0,
                      ),
                      height: valueOrDefault<double>(
                        _model.set ? 22.0 : 14.0,
                        14.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground2,
                        shape: BoxShape.circle,
                      ),
                    ),
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
