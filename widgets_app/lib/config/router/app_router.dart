import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', name: HomeScreen.name, builder: (context, state) => HomeScreen()),
    GoRoute(path: '/buttons', name:ButtonsScreen.name, builder: (context, state) => ButtonsScreen()),
    GoRoute(path: '/cards', name:CardsScreen.name, builder: (context, state) => CardsScreen()),
        GoRoute(path: '/progress', name:ProgressScreen.name, builder: (context, state) => ProgressScreen()),

  ],
);
