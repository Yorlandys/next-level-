import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'music_card_model.dart';
export 'music_card_model.dart';

class MusicCardWidget extends StatefulWidget {
  const MusicCardWidget({
    super.key,
    required this.cover,
    required this.title,
  });

  final String? cover;
  final String? title;

  @override
  State<MusicCardWidget> createState() => _MusicCardWidgetState();
}

class _MusicCardWidgetState extends State<MusicCardWidget> {
  late MusicCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicCardModel());
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
        await launchURL(
            'https://open.spotify.com/track/1Ks6OE9M7vz55OxDwkdBYx?si=6f28afae33174ec1');
      },
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.cover!,
                    width: 70.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.title,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
              child: Icon(
                Icons.chevron_right_rounded,
                color: FlutterFlowTheme.of(context).bgColor,
                size: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
