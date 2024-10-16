import '/components/categories_card/categories_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_food_widget.dart' show SearchFoodWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchFoodModel extends FlutterFlowModel<SearchFoodWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel1;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel2;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel3;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel4;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel5;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel6;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel7;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel8;
  // Model for CategoriesCard component.
  late CategoriesCardModel categoriesCardModel9;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    categoriesCardModel1 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel2 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel3 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel4 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel5 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel6 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel7 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel8 = createModel(context, () => CategoriesCardModel());
    categoriesCardModel9 = createModel(context, () => CategoriesCardModel());
  }

  @override
  void dispose() {
    categoriesCardModel1.dispose();
    categoriesCardModel2.dispose();
    categoriesCardModel3.dispose();
    categoriesCardModel4.dispose();
    categoriesCardModel5.dispose();
    categoriesCardModel6.dispose();
    categoriesCardModel7.dispose();
    categoriesCardModel8.dispose();
    categoriesCardModel9.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
