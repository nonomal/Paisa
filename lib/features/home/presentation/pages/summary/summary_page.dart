import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:paisa/features/home/presentation/cubit/summary/summary_cubit.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_desktop_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_mobile_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_tablet_widget.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({
    Key? key,
    required this.summaryCubit,
  }) : super(key: key);

  final SummaryCubit summaryCubit;

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  void initState() {
    super.initState();
    widget.summaryCubit.fetchTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: widget.summaryCubit,
      builder: (context, state) {
        if (state is TransactionsSuccessState) {
          return ScreenTypeLayout.builder(
            mobile: (p0) => SummaryMobileWidget(expenses: state.transactions),
            tablet: (p0) => SummaryTabletWidget(expenses: state.transactions),
            desktop: (p0) => SummaryDesktopWidget(expenses: state.transactions),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
