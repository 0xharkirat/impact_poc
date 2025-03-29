import 'package:go_router/go_router.dart';
import 'package:impact_poc/src/views/screens/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [GoRoute(path: '/', builder: (context, state) => const HomeScreen())],
);
