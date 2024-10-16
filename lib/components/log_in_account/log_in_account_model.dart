import '/components/login_button/login_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'log_in_account_widget.dart' show LogInAccountWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogInAccountModel extends FlutterFlowModel<LogInAccountWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for LoginButton component.
  late LoginButtonModel loginButtonModel1;
  // Model for LoginButton component.
  late LoginButtonModel loginButtonModel2;
  // Model for LoginButton component.
  late LoginButtonModel loginButtonModel3;

  @override
  void initState(BuildContext context) {
    loginButtonModel1 = createModel(context, () => LoginButtonModel());
    loginButtonModel2 = createModel(context, () => LoginButtonModel());
    loginButtonModel3 = createModel(context, () => LoginButtonModel());
  }

  @override
  void dispose() {
    loginButtonModel1.dispose();
    loginButtonModel2.dispose();
    loginButtonModel3.dispose();
  }
}
