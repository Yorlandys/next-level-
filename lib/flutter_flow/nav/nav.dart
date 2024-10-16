import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => NavBarPage(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => NavBarPage(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Home') : HomeWidget(),
        ),
        FFRoute(
          name: 'Gender',
          path: '/gender',
          builder: (context, params) => GenderWidget(),
        ),
        FFRoute(
          name: 'SignIn',
          path: '/signIn',
          builder: (context, params) => SignInWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'ResetPassword',
          path: '/resetPassword',
          builder: (context, params) => ResetPasswordWidget(),
        ),
        FFRoute(
          name: 'M_YourName',
          path: '/mYourName',
          builder: (context, params) => MYourNameWidget(),
        ),
        FFRoute(
          name: 'M_YourGoal',
          path: '/mYourGoal',
          builder: (context, params) => MYourGoalWidget(),
        ),
        FFRoute(
          name: 'F_YourName',
          path: '/fYourName',
          builder: (context, params) => FYourNameWidget(),
        ),
        FFRoute(
          name: 'F_YourGoal',
          path: '/fYourGoal',
          builder: (context, params) => FYourGoalWidget(),
        ),
        FFRoute(
          name: 'M_GainMuscle',
          path: '/mGainMuscle',
          builder: (context, params) => MGainMuscleWidget(),
        ),
        FFRoute(
          name: 'M_LoseWeight',
          path: '/mLoseWeight',
          builder: (context, params) => MLoseWeightWidget(),
        ),
        FFRoute(
          name: 'M_BodyType',
          path: '/mBodyType',
          builder: (context, params) => MBodyTypeWidget(),
        ),
        FFRoute(
          name: 'F_LoseWeight',
          path: '/fLoseWeight',
          builder: (context, params) => FLoseWeightWidget(),
        ),
        FFRoute(
          name: 'F_Toned',
          path: '/fToned',
          builder: (context, params) => FTonedWidget(),
        ),
        FFRoute(
          name: 'F_BodyType',
          path: '/fBodyType',
          builder: (context, params) => FBodyTypeWidget(),
        ),
        FFRoute(
          name: 'M_PartFocus',
          path: '/mPartFocus',
          builder: (context, params) => MPartFocusWidget(),
        ),
        FFRoute(
          name: 'F_PartFocus',
          path: '/fPartFocus',
          builder: (context, params) => FPartFocusWidget(),
        ),
        FFRoute(
          name: 'Experience',
          path: '/experience',
          builder: (context, params) => ExperienceWidget(),
        ),
        FFRoute(
          name: 'HowFit',
          path: '/howFit',
          builder: (context, params) => HowFitWidget(),
        ),
        FFRoute(
          name: 'YourProgress',
          path: '/yourProgress',
          builder: (context, params) => YourProgressWidget(),
        ),
        FFRoute(
          name: 'Statement',
          path: '/statement',
          builder: (context, params) => StatementWidget(),
        ),
        FFRoute(
          name: 'Age',
          path: '/age',
          builder: (context, params) => AgeWidget(),
        ),
        FFRoute(
          name: 'Height',
          path: '/height',
          builder: (context, params) => HeightWidget(),
        ),
        FFRoute(
          name: 'YourWeight',
          path: '/yourWeight',
          builder: (context, params) => YourWeightWidget(),
        ),
        FFRoute(
          name: 'Suffer',
          path: '/suffer',
          builder: (context, params) => SufferWidget(),
        ),
        FFRoute(
          name: 'Yourknees',
          path: '/yourknees',
          builder: (context, params) => YourkneesWidget(),
        ),
        FFRoute(
          name: 'Statement2',
          path: '/statement2',
          builder: (context, params) => Statement2Widget(),
        ),
        FFRoute(
          name: 'Pushups',
          path: '/pushups',
          builder: (context, params) => PushupsWidget(),
        ),
        FFRoute(
          name: 'WalkDaily',
          path: '/walkDaily',
          builder: (context, params) => WalkDailyWidget(),
        ),
        FFRoute(
          name: 'BadHabits',
          path: '/badHabits',
          builder: (context, params) => BadHabitsWidget(),
        ),
        FFRoute(
          name: 'Statement3',
          path: '/statement3',
          builder: (context, params) => Statement3Widget(),
        ),
        FFRoute(
          name: 'SleepNight',
          path: '/sleepNight',
          builder: (context, params) => SleepNightWidget(),
        ),
        FFRoute(
          name: 'Stressed',
          path: '/stressed',
          builder: (context, params) => StressedWidget(),
        ),
        FFRoute(
          name: 'Motivate',
          path: '/motivate',
          builder: (context, params) => MotivateWidget(),
        ),
        FFRoute(
          name: 'Happier',
          path: '/happier',
          builder: (context, params) => HappierWidget(),
        ),
        FFRoute(
          name: 'WhereWorkout',
          path: '/whereWorkout',
          builder: (context, params) => WhereWorkoutWidget(),
        ),
        FFRoute(
          name: 'Exercises',
          path: '/exercises',
          builder: (context, params) => ExercisesWidget(),
        ),
        FFRoute(
          name: 'Statement4',
          path: '/statement4',
          builder: (context, params) => Statement4Widget(),
        ),
        FFRoute(
          name: 'YouStart',
          path: '/youStart',
          builder: (context, params) => YouStartWidget(),
        ),
        FFRoute(
          name: 'Commit',
          path: '/commit',
          builder: (context, params) => CommitWidget(),
        ),
        FFRoute(
          name: 'Committing',
          path: '/committing',
          builder: (context, params) => CommittingWidget(),
        ),
        FFRoute(
          name: 'WorkoutLength',
          path: '/workoutLength',
          builder: (context, params) => WorkoutLengthWidget(),
        ),
        FFRoute(
          name: 'Onboarding_1',
          path: '/onboarding1',
          builder: (context, params) => Onboarding1Widget(),
        ),
        FFRoute(
          name: 'Onboarding_2',
          path: '/onboarding2',
          builder: (context, params) => Onboarding2Widget(),
        ),
        FFRoute(
          name: 'Onboarding_3',
          path: '/onboarding3',
          builder: (context, params) => Onboarding3Widget(),
        ),
        FFRoute(
          name: 'Commitment',
          path: '/commitment',
          builder: (context, params) => CommitmentWidget(),
        ),
        FFRoute(
          name: 'PlanPreference',
          path: '/planPreference',
          builder: (context, params) => PlanPreferenceWidget(),
        ),
        FFRoute(
          name: 'PickDays',
          path: '/pickDays',
          builder: (context, params) => PickDaysWidget(),
        ),
        FFRoute(
          name: 'HearFitify',
          path: '/hearFitify',
          builder: (context, params) => HearFitifyWidget(),
        ),
        FFRoute(
          name: 'CreatingPlan',
          path: '/creatingPlan',
          builder: (context, params) => CreatingPlanWidget(),
        ),
        FFRoute(
          name: 'PlanReady',
          path: '/planReady',
          builder: (context, params) => PlanReadyWidget(),
        ),
        FFRoute(
          name: 'Subscription',
          path: '/subscription',
          builder: (context, params) => SubscriptionWidget(),
        ),
        FFRoute(
          name: 'Workouts',
          path: '/workouts',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Workouts')
              : WorkoutsWidget(),
        ),
        FFRoute(
          name: 'Food',
          path: '/food',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Food') : FoodWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: 'AboutWorkout',
          path: '/aboutWorkout',
          builder: (context, params) => AboutWorkoutWidget(),
        ),
        FFRoute(
          name: 'WorkoutList',
          path: '/workoutList',
          builder: (context, params) => WorkoutListWidget(),
        ),
        FFRoute(
          name: 'WorkoutDetails',
          path: '/workoutDetails',
          builder: (context, params) => WorkoutDetailsWidget(),
        ),
        FFRoute(
          name: 'Music',
          path: '/music',
          builder: (context, params) => MusicWidget(),
        ),
        FFRoute(
          name: 'SoundSettings',
          path: '/soundSettings',
          builder: (context, params) => SoundSettingsWidget(),
        ),
        FFRoute(
          name: 'ExerciesList',
          path: '/exerciesList',
          builder: (context, params) => ExerciesListWidget(),
        ),
        FFRoute(
          name: 'FoodFilter',
          path: '/foodFilter',
          builder: (context, params) => FoodFilterWidget(),
        ),
        FFRoute(
          name: 'ExerciseDetails',
          path: '/exerciseDetails',
          builder: (context, params) => ExerciseDetailsWidget(),
        ),
        FFRoute(
          name: 'Instructions',
          path: '/instructions',
          builder: (context, params) => InstructionsWidget(),
        ),
        FFRoute(
          name: 'FitnessList',
          path: '/fitnessList',
          builder: (context, params) => FitnessListWidget(),
        ),
        FFRoute(
          name: 'ExerciesStart',
          path: '/exerciesStart',
          builder: (context, params) => ExerciesStartWidget(),
        ),
        FFRoute(
          name: 'ViewList',
          path: '/viewList',
          builder: (context, params) => ViewListWidget(),
        ),
        FFRoute(
          name: 'WorkoutFeedback',
          path: '/workoutFeedback',
          builder: (context, params) => WorkoutFeedbackWidget(),
        ),
        FFRoute(
          name: 'WorkoutCompleted',
          path: '/workoutCompleted',
          builder: (context, params) => WorkoutCompletedWidget(),
        ),
        FFRoute(
          name: 'FoodSetting',
          path: '/foodSetting',
          builder: (context, params) => FoodSettingWidget(),
        ),
        FFRoute(
          name: 'ExercisePacks',
          path: '/exercisePacks',
          builder: (context, params) => ExercisePacksWidget(),
        ),
        FFRoute(
          name: 'ProfileEdit',
          path: '/profileEdit',
          builder: (context, params) => ProfileEditWidget(),
        ),
        FFRoute(
          name: 'Reminders',
          path: '/reminders',
          builder: (context, params) => RemindersWidget(),
        ),
        FFRoute(
          name: 'Integrations',
          path: '/integrations',
          builder: (context, params) => IntegrationsWidget(),
        ),
        FFRoute(
          name: 'Achievements',
          path: '/achievements',
          builder: (context, params) => AchievementsWidget(),
        ),
        FFRoute(
          name: 'Favorites',
          path: '/favorites',
          builder: (context, params) => FavoritesWidget(),
        ),
        FFRoute(
          name: 'SearchFood',
          path: '/searchFood',
          builder: (context, params) => SearchFoodWidget(),
        ),
        FFRoute(
          name: 'ViewAll',
          path: '/viewAll',
          builder: (context, params) => ViewAllWidget(),
        ),
        FFRoute(
          name: 'FilterWorkouts',
          path: '/filterWorkouts',
          builder: (context, params) => FilterWorkoutsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
