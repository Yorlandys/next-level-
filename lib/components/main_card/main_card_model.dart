import '/components/indicator/indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_card_widget.dart' show MainCardWidget;
import 'package:flutter/material.dart';

class MainCardModel extends FlutterFlowModel<MainCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Indicator component.
  late IndicatorModel indicatorModel1;
  // Model for Indicator component.
  late IndicatorModel indicatorModel2;

  @override
  void initState(BuildContext context) {
    indicatorModel1 = createModel(context, () => IndicatorModel());
    indicatorModel2 = createModel(context, () => IndicatorModel());
  }

  @override
  void dispose() {
    indicatorModel1.dispose();
    indicatorModel2.dispose();
  }
}
