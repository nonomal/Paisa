import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'package:paisa/core/common.dart';

class AppLanguageChanger extends StatelessWidget {
  const AppLanguageChanger({super.key});

  Future<String?> showAppLanguageChooser(
    BuildContext context,
    Box<dynamic> value,
    String code,
  ) {
    return showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      constraints: BoxConstraints(
        maxWidth:
            MediaQuery.of(context).size.width >= 700 ? 700 : double.infinity,
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 1,
          expand: false,
          builder: (context, scrollController) {
            final List<LanguageEntity> languages = Languages.languages.sorted(
              (a, b) => a.value.compareTo(b.value),
            );
            return AppLanguageChooserListWidget(
              scrollController: scrollController,
              languages: languages,
              selectedCode: code,
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:
          Provider.of<Box<dynamic>>(context).listenable(keys: [appLanguageKey]),
      builder: (context, value, child) {
        final String code = value.get(appLanguageKey, defaultValue: 'en');
        return ListTile(
          leading: Icon(
            MdiIcons.translate,
            color: context.onSurfaceVariant,
          ),
          onTap: () async {
            showAppLanguageChooser(context, value, code).then((selectedCode) {
              if (selectedCode != null) {
                value
                    .put(appLanguageKey, selectedCode)
                    .then((value) => Navigator.pop(context));
              }
            });
          },
          title: Text(context.loc.appLanguage),
          subtitle: Text(Languages.languages
              .firstWhere((element) => element.code == code)
              .value),
        );
      },
    );
  }
}

class AppLanguageChooserListWidget extends StatefulWidget {
  const AppLanguageChooserListWidget({
    super.key,
    required this.scrollController,
    required this.languages,
    required this.selectedCode,
  });

  final ScrollController scrollController;
  final List<LanguageEntity> languages;
  final String selectedCode;

  @override
  State<AppLanguageChooserListWidget> createState() =>
      _AppLanguageChooserListWidgetState();
}

class _AppLanguageChooserListWidgetState
    extends State<AppLanguageChooserListWidget> {
  late String selectedCode = widget.selectedCode;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              context.loc.chooseAppLanguage,
              style: context.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: widget.scrollController,
              shrinkWrap: true,
              itemCount: widget.languages.length,
              itemBuilder: (context, index) {
                final LanguageEntity entity = widget.languages[index];
                return ListTile(
                  onTap: () {
                    setState(() {
                      selectedCode = entity.code;
                    });
                  },
                  title: Text(
                    entity.value,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: selectedCode == entity.code
                            ? Theme.of(context).colorScheme.primary
                            : null),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(context.loc.cancel),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context, selectedCode),
                  child: Text(context.loc.done),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LanguageEntity {
  final String code;
  final String value;

  const LanguageEntity({
    required this.code,
    required this.value,
  });
}

class Languages {
  const Languages._();

  static const languages = [
    LanguageEntity(code: 'en', value: 'English'),
    LanguageEntity(code: 'es', value: 'Spanish'),
    LanguageEntity(code: 'pl', value: 'Polish'),
    LanguageEntity(code: 'be', value: 'Belarusian'),
    LanguageEntity(code: 'de', value: 'German'),
    LanguageEntity(code: 'fr', value: 'French'),
    LanguageEntity(code: 'it', value: 'Italian'),
    LanguageEntity(code: 'kn', value: 'Kannada (IN)'),
    LanguageEntity(code: 'pt', value: 'Portuguese'),
    LanguageEntity(code: 'ru', value: 'Russian'),
    LanguageEntity(code: 'ta', value: 'Tamil (IN)'),
    LanguageEntity(code: 'vi', value: 'Vietnamese'),
    LanguageEntity(code: 'zh', value: 'Chinese'),
    LanguageEntity(code: 'zh_TW', value: 'Traditional Chinese'),
  ];
}
