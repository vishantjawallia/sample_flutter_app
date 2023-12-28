import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'providers/main_provider.dart';

class ProviderInjector {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(lazy: true, create: (_) => MainProvider()),
  ];
}
