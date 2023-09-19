import 'package:appflowy/workspace/application/appearance.dart';
<<<<<<< HEAD
import 'package:appflowy/workspace/presentation/settings/widgets/settings_appearance/date_format_setting.dart';
import 'package:appflowy/workspace/presentation/settings/widgets/settings_appearance/time_format_setting.dart';
=======
import 'package:appflowy/workspace/presentation/settings/widgets/settings_appearance/create_file_setting.dart';
>>>>>>> main
import 'package:flowy_infra/plugins/bloc/dynamic_plugin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_appearance/settings_appearance.dart';

class SettingsAppearanceView extends StatelessWidget {
  const SettingsAppearanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider<DynamicPluginBloc>(
        create: (_) => DynamicPluginBloc(),
        child: BlocBuilder<AppearanceSettingsCubit, AppearanceSettingsState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BrightnessSetting(currentThemeMode: state.themeMode),
                ColorSchemeSetting(
                  currentTheme: state.appTheme.themeName,
                  bloc: context.read<DynamicPluginBloc>(),
                ),
<<<<<<< HEAD
                ThemeFontFamilySetting(currentFontFamily: state.font),
                DateFormatSetting(currentFormat: state.dateFormat),
                TimeFormatSetting(currentFormat: state.timeFormat),
=======
                ThemeFontFamilySetting(
                  currentFontFamily: state.font,
                ),
                // TODO: enablt them in version 0.3.3
                // LayoutDirectionSetting(
                //   currentLayoutDirection: state.layoutDirection,
                // ),
                // TextDirectionSetting(
                //   currentTextDirection: state.textDirection,
                // ),
                CreateFileSettings(),
>>>>>>> main
              ],
            );
          },
        ),
      ),
    );
  }
}
