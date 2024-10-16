import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

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
      errorBuilder: (context, state) => const NavBarPage(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const NavBarPage(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Home') : const HomeWidget(),
        ),
        FFRoute(
          name: 'Gender',
          path: '/gender',
          builder: (context, params) => const GenderWidget(),
        ),
        FFRoute(
          name: 'SignIn',
          path: '/signIn',
          builder: (context, params) => const SignInWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'ResetPassword',
          path: '/resetPassword',
          builder: (context, params) => const ResetPasswordWidget(),
        ),
        FFRoute(
          name: 'M_YourName',
          path: '/mYourName',
          builder: (context, params) => const MYourNameWidget(),
        ),
        FFRoute(
          name: 'M_YourGoal',
          path: '/mYourGoal',
          builder: (context, params) => const MYourGoalWidget(),
        ),
        FFRoute(
          name: 'F_YourName',
          path: '/fYourName',
          builder: (context, params) => const FYourNameWidget(),
        ),
        FFRoute(
          name: 'F_YourGoal',
          path: '/fYourGoal',
          builder: (context, params) => const FYourGoalWidget(),
        ),
        FFRoute(
          name: 'M_GainMuscle',
          path: '/mGainMuscle',
          builder: (context, params) => const MGainMuscleWidget(),
        ),
        FFRoute(
          name: 'M_LoseWeight',
          path: '/mLoseWeight',
          builder: (context, params) => const MLoseWeightWidget(),
        ),
        FFRoute(
          name: 'M_BodyType',
          path: '/mBodyType',
          builder: (context, params) => const MBodyTypeWidget(),
        ),
        FFRoute(
          name: 'F_LoseWeight',
          path: '/fLoseWeight',
          builder: (context, params) => const FLoseWeightWidget(),
        ),
        FFRoute(
          name: 'F_Toned',
          path: '/fToned',
          builder: (context, params) => const FTonedWidget(),
        ),
        FFRoute(
          name: 'F_BodyType',
          path: '/fBodyType',
          builder: (context, params) => const FBodyTypeWidget(),
        ),
        FFRoute(
          name: 'M_PartFocus',
          path: '/mPartFocus',
          builder: (context, params) => const MPartFocusWidget(),
        ),
        FFRoute(
          name: 'F_PartFocus',
          path: '/fPartFocus',
          builder: (context, params) => const FPartFocusWidget(),
        ),
        FFRoute(
          name: 'Experience',
          path: '/experience',
          builder: (context, params) => const ExperienceWidget(),
        ),
        FFRoute(
          name: 'HowFit',
          path: '/howFit',
          builder: (context, params) => const HowFitWidget(),
        ),
        FFRoute(
          name: 'YourProgress',
          path: '/yourProgress',
          builder: (context, params) => const YourProgressWidget(),
        ),
        FFRoute(
          name: 'Statement',
          path: '/statement',
          builder: (context, params) => const StatementWidget(),
        ),
        FFRoute(
          name: 'Age',
          path: '/age',
          builder: (context, params) => const AgeWidget(),
        ),
        FFRoute(
          name: 'Height',
          path: '/height',
          builder: (context, params) => const HeightWidget(),
        ),
        FFRoute(
          name: 'YourWeight',
          path: '/yourWeight',
          builder: (context, params) => const YourWeightWidget(),
        ),
        FFRoute(
          name: 'Suffer',
          path: '/suffer',
          builder: (context, params) => const SufferWidget(),
        ),
        FFRoute(
          name: 'Yourknees',
          path: '/yourknees',
          builder: (context, params) => const YourkneesWidget(),
        ),
        FFRoute(
          name: 'Statement2',
          path: '/statement2',
          builder: (context, params) => const Statement2Widget(),
        ),
        FFRoute(
          name: 'Pushups',
          path: '/pushups',
          builder: (context, params) => const PushupsWidget(),
        ),
        FFRoute(
          name: 'WalkDaily',
          path: '/walkDaily',
          builder: (context, params) => const WalkDailyWidget(),
        ),
        FFRoute(
          name: 'BadHabits',
          path: '/badHabits',
          builder: (context, params) => const BadHabitsWidget(),
        ),
        FFRoute(
          name: 'Statement3',
          path: '/statement3',
          builder: (context, params) => const Statement3Widget(),
        ),
        FFRoute(
          name: 'SleepNight',
          path: '/sleepNight',
          builder: (context, params) => const SleepNightWidget(),
        ),
        FFRoute(
          name: 'Stressed',
          path: '/stressed',
          builder: (context, params) => const StressedWidget(),
        ),
        FFRoute(
          name: 'Motivate',
          path: '/motivate',
          builder: (context, params) => const MotivateWidget(),
        ),
        FFRoute(
          name: 'Happier',
          path: '/happier',
          builder: (context, params) => const HappierWidget(),
        ),
        FFRoute(
          name: 'WhereWorkout',
          path: '/whereWorkout',
          builder: (context, params) => const WhereWorkoutWidget(),
        ),
        FFRoute(
          name: 'Exercises',
          path: '/exercises',
          builder: (context, params) => const ExercisesWidget(),
        ),
        FFRoute(
          name: 'Statement4',
          path: '/statement4',
          builder: (context, params) => const Statement4Widget(),
        ),
        FFRoute(
          name: 'YouStart',
          path: '/youStart',
          builder: (context, params) => const YouStartWidget(),
        ),
        FFRoute(
          name: 'Commit',
          path: '/commit',
          builder: (context, params) => const CommitWidget(),
        ),
        FFRoute(
          name: 'Committing',
          path: '/committing',
          builder: (context, params) => const CommittingWidget(),
        ),
        FFRoute(
          name: 'WorkoutLength',
          path: '/workoutLength',
          builder: (context, params) => const WorkoutLengthWidget(),
        ),
        FFRoute(
          name: 'Onboarding_1',
          path: '/onboarding1',
          builder: (context, params) => const Onboarding1Widget(),
        ),
        FFRoute(
          name: 'Onboarding_2',
          path: '/onboarding2',
          builder: (context, params) => const Onboarding2Widget(),
        ),
        FFRoute(
          name: 'Onboarding_3',
          path: '/onboarding3',
          builder: (context, params) => const Onboarding3Widget(),
        ),
        FFRoute(
          name: 'Commitment',
          path: '/commitment',
          builder: (context, params) => const CommitmentWidget(),
        ),
        FFRoute(
          name: 'PlanPreference',
          path: '/planPreference',
          builder: (context, params) => const PlanPreferenceWidget(),
        ),
        FFRoute(
          name: 'PickDays',
          path: '/pickDays',
          builder: (context, params) => const PickDaysWidget(),
        ),
        FFRoute(
          name: 'HearFitify',
          path: '/hearFitify',
          builder: (context, params) => const HearFitifyWidget(),
        ),
        FFRoute(
          name: 'CreatingPlan',
          path: '/creatingPlan',
          builder: (context, params) => const CreatingPlanWidget(),
        ),
        FFRoute(
          name: 'PlanReady',
          path: '/planReady',
          builder: (context, params) => const PlanReadyWidget(),
        ),
        FFRoute(
          name: 'Subscription',
          path: '/subscription',
          builder: (context, params) => const SubscriptionWidget(),
        ),
        FFRoute(
          name: 'Workouts',
          path: '/workouts',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Workouts')
              : const WorkoutsWidget(),
        ),
        FFRoute(
          name: 'Food',
          path: '/food',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Food') : const FoodWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Profile')
              : const ProfileWidget(),
        ),
        FFRoute(
          name: 'AboutWorkout',
          path: '/aboutWorkout',
          builder: (context, params) => const AboutWorkoutWidget(),
        ),
        FFRoute(
          name: 'WorkoutList',
          path: '/workoutList',
          builder: (context, params) => const WorkoutListWidget(),
        ),
        FFRoute(
          name: 'WorkoutDetails',
          path: '/workoutDetails',
          builder: (context, params) => const WorkoutDetailsWidget(),
        ),
        FFRoute(
          name: 'Music',
          path: '/music',
          builder: (context, params) => const MusicWidget(),
        ),
        FFRoute(
          name: 'SoundSettings',
          path: '/soundSettings',
          builder: (context, params) => const SoundSettingsWidget(),
        ),
        FFRoute(
          name: 'ExerciesList',
          path: '/exerciesList',
          builder: (context, params) => const ExerciesListWidget(),
        ),
        FFRoute(
          name: 'FoodFilter',
          path: '/foodFilter',
          builder: (context, params) => const FoodFilterWidget(),
        ),
        FFRoute(
          name: 'ExerciseDetails',
          path: '/exerciseDetails',
          builder: (context, params) => const ExerciseDetailsWidget(),
        ),
        FFRoute(
          name: 'Instructions',
          path: '/instructions',
          builder: (context, params) => const InstructionsWidget(),
        ),
        FFRoute(
          name: 'FitnessList',
          path: '/fitnessList',
          builder: (context, params) => const FitnessListWidget(),
        ),
        FFRoute(
          name: 'ExerciesStart',
          path: '/exerciesStart',
          builder: (context, params) => const ExerciesStartWidget(),
        ),
        FFRoute(
          name: 'ViewList',
          path: '/viewList',
          builder: (context, params) => const ViewListWidget(),
        ),
        FFRoute(
          name: 'WorkoutFeedback',
          path: '/workoutFeedback',
          builder: (context, params) => const WorkoutFeedbackWidget(),
        ),
        FFRoute(
          name: 'WorkoutCompleted',
          path: '/workoutCompleted',
          builder: (context, params) => const WorkoutCompletedWidget(),
        ),
        FFRoute(
          name: 'FoodSetting',
          path: '/foodSetting',
          builder: (context, params) => const FoodSettingWidget(),
        ),
        FFRoute(
          name: 'ExercisePacks',
          path: '/exercisePacks',
          builder: (context, params) => const ExercisePacksWidget(),
        ),
        FFRoute(
          name: 'ProfileEdit',
          path: '/profileEdit',
          builder: (context, params) => const ProfileEditWidget(),
        ),
        FFRoute(
          name: 'Reminders',
          path: '/reminders',
          builder: (context, params) => const RemindersWidget(),
        ),
        FFRoute(
          name: 'Integrations',
          path: '/integrations',
          builder: (context, params) => const IntegrationsWidget(),
        ),
        FFRoute(
          name: 'Achievements',
          path: '/achievements',
          builder: (context, params) => const AchievementsWidget(),
        ),
        FFRoute(
          name: 'Favorites',
          path: '/favorites',
          builder: (context, params) => const FavoritesWidget(),
        ),
        FFRoute(
          name: 'SearchFood',
          path: '/searchFood',
          builder: (context, params) => const SearchFoodWidget(),
        ),
        FFRoute(
          name: 'ViewAll',
          path: '/viewAll',
          builder: (context, params) => const ViewAllWidget(),
        ),
        FFRoute(
          name: 'FilterWorkouts',
          path: '/filterWorkouts',
          builder: (context, params) => const FilterWorkoutsWidget(),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
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
