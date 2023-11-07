import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/country_picker/presentation/cubit/country_picker_cubit.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CountryPickerPage extends StatefulWidget {
  const CountryPickerPage({
    Key? key,
    required this.forceCountrySelector,
  }) : super(key: key);

  final bool forceCountrySelector;

  @override
  State<CountryPickerPage> createState() => _CountryPickerPageState();
}

class _CountryPickerPageState extends State<CountryPickerPage> {
  late final CountryPickerCubit countryCubit =
      BlocProvider.of<CountryPickerCubit>(context);
  @override
  void initState() {
    super.initState();
    if (widget.forceCountrySelector) {
      countryCubit.fetchCountry();
    } else {
      countryCubit.checkForData();
    }
  }

  @override
  Widget build(BuildContext context) {
    CountryModel? countryModel;
    final Map<String, dynamic>? json =
        settings.get(userCountryKey) as Map<String, dynamic>?;
    if (json != null) {
      countryModel = CountryModel.fromJson(json);
    }
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: BlocListener<CountryPickerCubit, CountryPickerState>(
        listener: (context, state) {
          if (state is NavigateToLading) {
            context.goNamed(landingName);
          }
        },
        child: Scaffold(
          appBar: widget.forceCountrySelector ? AppBar() : null,
          body: SafeArea(
            child: Column(
              children: [
                if (widget.forceCountrySelector)
                  const SizedBox.shrink()
                else
                  const SizedBox(height: 16),
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.language_rounded,
                          size: 72,
                          color: context.primary,
                        ),
                      ),
                      Text(
                        context.loc.selectCurrency,
                        style: context.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.onSurface,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PaisaTextFormField(
                    hintText: context.loc.search,
                    controller: TextEditingController(),
                    keyboardType: TextInputType.name,
                    onChanged: (value) => countryCubit.filterCountry(value),
                  ),
                ),
                Expanded(
                  child: BlocBuilder<CountryPickerCubit, CountryPickerState>(
                    bloc: countryCubit,
                    builder: (context, state) {
                      if (state is CountriesState) {
                        return ScreenTypeLayout.builder(
                          mobile: (p0) => CountriesWidget(
                            countries: state.countries,
                            crossAxisCount: 2,
                            selectedModel: countryModel,
                          ),
                          tablet: (p0) => CountriesWidget(
                            countries: state.countries,
                            crossAxisCount: 3,
                            selectedModel: countryModel,
                          ),
                          desktop: (p0) => CountriesWidget(
                            countries: state.countries,
                            crossAxisCount: 6,
                            selectedModel: countryModel,
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              countryCubit.saveCountry();
            },
            extendedPadding: const EdgeInsets.symmetric(horizontal: 24),
            label: Icon(MdiIcons.arrowRight),
            icon: Text(
              context.loc.next,
              style: context.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CountriesWidget extends StatefulWidget {
  const CountriesWidget({
    super.key,
    required this.countries,
    required this.crossAxisCount,
    this.selectedModel,
  });

  final List<CountryModel> countries;
  final int crossAxisCount;
  final CountryModel? selectedModel;

  @override
  State<CountriesWidget> createState() => _CountriesWidgetState();
}

class _CountriesWidgetState extends State<CountriesWidget> {
  late CountryModel? selectedModel = widget.selectedModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 82, left: 8, right: 8),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 256,
        childAspectRatio: 15 / 12,
      ),
      shrinkWrap: true,
      itemCount: widget.countries.length,
      itemBuilder: (context, index) {
        final CountryModel model = widget.countries[index];
        return CountryWidget(
          countryModel: model,
          selected: selectedModel == model,
          onSelected: (countryModel) {
            setState(() {
              selectedModel = countryModel;
            });
            BlocProvider.of<CountryPickerCubit>(context).selectedCountry =
                countryModel;
          },
        );
      },
    );
  }
}

class CountryWidget extends StatelessWidget {
  const CountryWidget({
    super.key,
    required this.countryModel,
    required this.selected,
    required this.onSelected,
  });

  final CountryModel countryModel;
  final Function(CountryModel countryModel) onSelected;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return PaisaCard(
      color: context.surface,
      shape: selected
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                width: 2,
                color: context.primary,
              ),
            )
          : null,
      child: InkWell(
        onTap: () => onSelected(countryModel),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 16,
              ),
              child: Text(
                countryModel.symbol,
                style: context.titleLarge,
              ),
            ),
            const Spacer(),
            ListTile(
              title: Text(
                countryModel.name,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                countryModel.code,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
