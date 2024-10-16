import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dietary_preferences_widget.dart' show DietaryPreferencesWidget;
import 'package:flutter/material.dart';

class DietaryPreferencesModel
    extends FlutterFlowModel<DietaryPreferencesWidget> {
  ///  Local state fields for this component.

  String duration = 'Medium';

  ///  State fields for stateful widgets in this component.

  // Model for CustomButton component.
  late CustomButtonModel customButtonModel;

  @override
  void initState(BuildContext context) {
    customButtonModel = createModel(context, () => CustomButtonModel());
  }

  @override
  void dispose() {
    customButtonModel.dispose();
  }
}
