import '/components/music_card/music_card_widget.dart';
import '/components/settings_card2/settings_card2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'music_widget.dart' show MusicWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MusicModel extends FlutterFlowModel<MusicWidget> {
  ///  Local state fields for this page.

  String? plan = '';

  ///  State fields for stateful widgets in this page.

  // Model for SettingsCard2 component.
  late SettingsCard2Model settingsCard2Model;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel1;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel2;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel3;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel4;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel5;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel6;

  @override
  void initState(BuildContext context) {
    settingsCard2Model = createModel(context, () => SettingsCard2Model());
    musicCardModel1 = createModel(context, () => MusicCardModel());
    musicCardModel2 = createModel(context, () => MusicCardModel());
    musicCardModel3 = createModel(context, () => MusicCardModel());
    musicCardModel4 = createModel(context, () => MusicCardModel());
    musicCardModel5 = createModel(context, () => MusicCardModel());
    musicCardModel6 = createModel(context, () => MusicCardModel());
  }

  @override
  void dispose() {
    settingsCard2Model.dispose();
    musicCardModel1.dispose();
    musicCardModel2.dispose();
    musicCardModel3.dispose();
    musicCardModel4.dispose();
    musicCardModel5.dispose();
    musicCardModel6.dispose();
  }
}
