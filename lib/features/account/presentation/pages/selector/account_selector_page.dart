import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/card_type.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/data/data_sources/account_manager.dart';
import 'package:paisa/features/account/data/data_sources/default_account.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/main.dart';

import 'package:responsive_builder/responsive_builder.dart';

class AccountSelectorPage extends StatefulWidget {
  const AccountSelectorPage({
    super.key,
    @Named('local-account') required this.dataSource,
  });
  final AccountManager dataSource;

  @override
  State<AccountSelectorPage> createState() => _AccountSelectorPageState();
}

class _AccountSelectorPageState extends State<AccountSelectorPage> {
  final List<AccountModel> defaultModels = defaultAccountsData();

  Future<void> saveAndNavigate() async {
    await settings.put(userAccountSelectorKey, false);
    if (mounted) {
      context.go(countrySelectorPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        appBar: context.materialYouAppBar(
          context.loc.accounts,
          actions: [
            PaisaButton(
              onPressed: saveAndNavigate,
              title: context.loc.done,
            ),
            const SizedBox(width: 16)
          ],
        ),
        body: ValueListenableBuilder<Box<AccountModel>>(
          valueListenable: getIt.get<Box<AccountModel>>().listenable(),
          builder: (context, value, child) {
            final List<AccountModel> categoryModels = value.values.toList();
            return ListView(
              children: [
                ListTile(
                  title: Text(
                    context.loc.addedAccounts,
                    style: context.titleMedium,
                  ),
                ),
                ScreenTypeLayout.builder(
                  mobile: (p0) => PaisaFilledCard(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categoryModels.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final AccountModel model = categoryModels[index];
                        return AccountItemWidget(
                          model: model,
                          onPress: () async {
                            await model.delete();
                            defaultModels.add(model);
                          },
                        );
                      },
                    ),
                  ),
                  tablet: (p0) => GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: categoryModels.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final AccountModel model = categoryModels[index];
                      return AccountItemWidget(
                        model: model,
                        onPress: () async {
                          await model.delete();
                          defaultModels.add(model);
                        },
                      );
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    context.loc.defaultAccounts,
                    style: context.titleMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                    spacing: 12.0,
                    runSpacing: 12.0,
                    children: defaultModels
                        .map((model) => FilterChip(
                              onSelected: (value) {
                                widget.dataSource.add(model.copyWith(
                                    name: settings.get(
                                  userNameKey,
                                  defaultValue: model.name,
                                )));
                                setState(() {
                                  defaultModels.remove(model);
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                                side: BorderSide(
                                  width: 1,
                                  color: context.primary,
                                ),
                              ),
                              showCheckmark: false,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              label: Text(model.bankName ?? ''),
                              labelStyle: context.titleMedium,
                              padding: const EdgeInsets.all(12),
                              avatar: Icon(
                                model.cardType!.icon,
                                color: context.primary,
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class AccountItemWidget extends StatelessWidget {
  const AccountItemWidget({
    super.key,
    required this.model,
    required this.onPress,
  });

  final AccountModel model;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => ListTile(
        onTap: onPress,
        leading: Icon(
          model.cardType!.icon,
          color: Color(model.color ?? Colors.brown.shade200.value),
        ),
        title: Text(model.bankName ?? ''),
        subtitle: Text(model.name ?? ''),
        trailing: Icon(MdiIcons.delete),
      ),
      tablet: (p0) => PaisaCard(
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    model.cardType!.icon,
                    color: Color(model.color ?? Colors.brown.shade200.value),
                  ),
                ),
                Expanded(
                    child: Text(
                  model.name ?? '',
                  style: context.titleMedium,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
