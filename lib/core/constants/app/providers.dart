
import 'package:company_app/core/init/theme/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: ((context) => ThemeNotifier())),
];