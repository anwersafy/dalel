
import 'package:go_router/go_router.dart';

void customNavigate(context, String routeName) {
  GoRouter.of(context).push('/onBoarding');
}
void customNavigateReplacment(context, String routeName) {
  GoRouter.of(context).pushReplacement('/onBoarding');
}
