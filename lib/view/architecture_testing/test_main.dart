
import 'package:company_app/core/base/view/base_view.dart';
import 'package:company_app/core/constants/enums/app_theme_enum.dart';
import 'package:company_app/core/init/theme/theme_manager.dart';
import 'package:company_app/view/architecture_testing/test_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../core/base/state/base_state.dart';
import '../../core/constants/navigation/navigation_constants.dart';
import '../../core/init/navigation/navigation_service.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => MainViewState();
}

class MainViewState extends BaseState<MainView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<VM>(
      onModelReady: (){},
      onModelDispose: (){},
      viewModel: VM(),
      onPageBuilder: (context) {
        return  Scaffold(
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  child: Text("navigate to test_view"),
                  onPressed: () {
                    NavigationService.instance.navigateToPage(path: NavigationConstants.TEST_VIEW, data: Example(content: "second try"));
                  },
                ),
                ElevatedButton(
                  child: Text("change theme"),
                  onPressed: () {
                    Provider.of<ThemeNotifier>(context, listen: false).changeValue(AppThemes.DARK);
                  }
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


class VM extends Cubit<int>{
  VM(): super(0);
}

