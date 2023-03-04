import 'package:brainstormer_app/navigation/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider.autoDispose((ref) {
  return AppRouter();
});
