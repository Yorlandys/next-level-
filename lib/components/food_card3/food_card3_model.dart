import '/components/custom_btn/custom_btn_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'food_card3_widget.dart' show FoodCard3Widget;
import 'package:flutter/material.dart';

class FoodCard3Model extends FlutterFlowModel<FoodCard3Widget> {
  ///  Local state fields for this component.

  bool save = false;

  ///  State fields for stateful widgets in this component.

  // Model for CustomBtn component.
  late CustomBtnModel customBtnModel1;
  // Model for CustomBtn component.
  late CustomBtnModel customBtnModel2;

  @override
  void initState(BuildContext context) {
    customBtnModel1 = createModel(context, () => CustomBtnModel());
    customBtnModel2 = createModel(context, () => CustomBtnModel());
  }

  @override
  void dispose() {
    customBtnModel1.dispose();
    customBtnModel2.dispose();
  }
}
