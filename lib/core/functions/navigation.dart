
import 'package:go_router/go_router.dart';

void customNavigate(context, String routeName) {
  GoRouter.of(context).push(routeName);
}
void customNavigateReplacment(context, String routeName) {
  GoRouter.of(context).pushReplacement(routeName);
}
