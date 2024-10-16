import '/components/category/category_widget.dart';
import '/components/food_card3/food_card3_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'favorites_widget.dart' show FavoritesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoritesModel extends FlutterFlowModel<FavoritesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Category component.
  late CategoryModel categoryModel;
  // Model for FoodCard3 component.
  late FoodCard3Model foodCard3Model1;
  // Model for FoodCard3 component.
  late FoodCard3Model foodCard3Model2;
  // Model for FoodCard3 component.
  late FoodCard3Model foodCard3Model3;
  // Model for FoodCard3 component.
  late FoodCard3Model foodCard3Model4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    categoryModel = createModel(context, () => CategoryModel());
    foodCard3Model1 = createModel(context, () => FoodCard3Model());
    foodCard3Model2 = createModel(context, () => FoodCard3Model());
    foodCard3Model3 = createModel(context, () => FoodCard3Model());
    foodCard3Model4 = createModel(context, () => FoodCard3Model());
  }

  @override
  void dispose() {
    categoryModel.dispose();
    foodCard3Model1.dispose();
    foodCard3Model2.dispose();
    foodCard3Model3.dispose();
    foodCard3Model4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
