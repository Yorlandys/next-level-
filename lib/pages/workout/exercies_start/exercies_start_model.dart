import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exercies_start_widget.dart' show ExerciesStartWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class ExerciesStartModel extends FlutterFlowModel<ExerciesStartWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 30000;
  int timerMilliseconds1 = 30000;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 30000;
  int timerMilliseconds2 = 30000;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs3 = 30000;
  int timerMilliseconds3 = 30000;
  String timerValue3 = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController3 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs4 = 30000;
  int timerMilliseconds4 = 30000;
  String timerValue4 = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController4 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs5 = 600000;
  int timerMilliseconds5 = 600000;
  String timerValue5 = StopWatchTimer.getDisplayTime(
    600000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController5 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController1.dispose();
    timerController2.dispose();
    timerController3.dispose();
    timerController4.dispose();
    timerController5.dispose();
  }
}
