import 'package:chat_gpt/config/theme/controller/theme_provider.dart';
import 'package:chat_gpt/src/home/controller/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  final List<SingleChildWidget> _providers = [
    Provider(create: (_) => HomeProvider()),
    ChangeNotifierProvider(create: (_) => ThemeProvider()..getTheme()),
  ];
  List<SingleChildWidget> get providers => _providers;
}
