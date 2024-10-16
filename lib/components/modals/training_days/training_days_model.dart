import '/components/custom_button/custom_button_widget.dart';
import '/components/day_selector/day_selector_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'training_days_widget.dart' show TrainingDaysWidget;
import 'package:flutter/material.dart';

class TrainingDaysModel extends FlutterFlowModel<TrainingDaysWidget> {
  ///  Local state fields for this component.

  String duration = 'Medium';

  ///  State fields for stateful widgets in this component.

  // Model for DaySelector component.
  late DaySelectorModel daySelectorModel1;
  // Model for DaySelector component.
  late DaySelectorModel daySelectorModel2;
  // Model for DaySelector component.
  late DaySelectorModel daySelectorModel3;
  // Model for DaySelector component.
  late DaySelectorModel daySelectorModel4;
  // Model for DaySelector component.
  late DaySelectorModel daySelectorModel5;
  // Model for DaySelector component.
  late DaySelectorModel daySelectorModel6;
  // Model for DaySelector component.
  late DaySelectorModel daySelectorModel7;
  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    daySelectorModel1 = createModel(context, () => DaySelectorModel());
    daySelectorModel2 = createModel(context, () => DaySelectorModel());
    daySelectorModel3 = createModel(context, () => DaySelectorModel());
    daySelectorModel4 = createModel(context, () => DaySelectorModel());
    daySelectorModel5 = createModel(context, () => DaySelectorModel());
    daySelectorModel6 = createModel(context, () => DaySelectorModel());
    daySelectorModel7 = createModel(context, () => DaySelectorModel());
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    daySelectorModel1.dispose();
    daySelectorModel2.dispose();
    daySelectorModel3.dispose();
    daySelectorModel4.dispose();
    daySelectorModel5.dispose();
    daySelectorModel6.dispose();
    daySelectorModel7.dispose();
    customButtonModel.dispose();
  }
}
