// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i17;
import 'package:event_bus_plus/event_bus_plus.dart' as _i18;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/adapters.dart' as _i6;
import 'package:hive_flutter/hive_flutter.dart' as _i26;
import 'package:image_picker/image_picker.dart' as _i20;
import 'package:in_app_review/in_app_review.dart' as _i21;
import 'package:injectable/injectable.dart' as _i2;

import '../core/in_app.dart' as _i79;
import '../features/account/data/data_sources/account_manager.dart' as _i3;
import '../features/account/data/data_sources/local/local_account_manager_impl.dart'
    as _i41;
import '../features/account/data/data_sources/remote/account_data_manager_impl.dart'
    as _i4;
import '../features/account/data/model/account_model.dart' as _i11;
import '../features/account/data/repository/account_repository_impl.dart'
    as _i43;
import '../features/account/domain/repository/account_repository.dart' as _i42;
import '../features/account/domain/use_case/account_use_case.dart' as _i77;
import '../features/account/domain/use_case/add_account_use_case.dart' as _i44;
import '../features/account/domain/use_case/delete_account_use_case.dart'
    as _i52;
import '../features/account/domain/use_case/get_account_use_case.dart' as _i64;
import '../features/account/domain/use_case/get_accounts_use_case.dart' as _i65;
import '../features/account/domain/use_case/update_account_use_case.dart'
    as _i90;
import '../features/account/presentation/bloc/accounts_bloc.dart' as _i93;
import '../features/category/data/data_sources/local/category_data_source.dart'
    as _i22;
import '../features/category/data/model/category_model.dart' as _i9;
import '../features/category/data/repository/category_repository_impl.dart'
    as _i48;
import '../features/category/domain/repository/category_repository.dart'
    as _i47;
import '../features/category/domain/use_case/add_category_use_case.dart'
    as _i94;
import '../features/category/domain/use_case/category_use_case.dart' as _i76;
import '../features/category/domain/use_case/delete_category_use_case.dart'
    as _i53;
import '../features/category/domain/use_case/get_category_use_case.dart'
    as _i66;
import '../features/category/domain/use_case/get_default_categories_use_case.dart'
    as _i69;
import '../features/category/domain/use_case/update_category_use_case.dart'
    as _i91;
import '../features/category/presentation/bloc/category_bloc.dart' as _i98;
import '../features/country_picker/data/repository/country_repository_impl.dart'
    as _i14;
import '../features/country_picker/domain/repository/country_repository.dart'
    as _i13;
import '../features/country_picker/domain/use_case/get_contries_user_case.dart'
    as _i19;
import '../features/country_picker/presentation/cubit/country_picker_cubit.dart'
    as _i49;
import '../features/debit/data/data_sources/debit_data_manager.dart' as _i15;
import '../features/debit/data/data_sources/local/debit_manager_impl.dart'
    as _i16;
import '../features/debit/data/data_sources/local/transaction_manager_impl.dart'
    as _i37;
import '../features/debit/data/data_sources/transaction_data_manager.dart'
    as _i36;
import '../features/debit/data/models/debit_model.dart' as _i8;
import '../features/debit/data/models/debit_transactions_model.dart' as _i12;
import '../features/debit/data/repository/debit_repository_impl.dart' as _i51;
import '../features/debit/domain/repository/debit_repository.dart' as _i50;
import '../features/debit/domain/use_case/add_debit_transaction_use_case.dart'
    as _i95;
import '../features/debit/domain/use_case/add_debit_use.case.dart' as _i96;
import '../features/debit/domain/use_case/debit_use_case.dart' as _i100;
import '../features/debit/domain/use_case/delete_debit_transaction_use_case.dart'
    as _i54;
import '../features/debit/domain/use_case/delete_debit_transactions_by_debit_id_use_case.dart'
    as _i55;
import '../features/debit/domain/use_case/delete_debit_use_case.dart' as _i56;
import '../features/debit/domain/use_case/get_debit_transactions_use_case.dart'
    as _i67;
import '../features/debit/domain/use_case/get_debit_use_case.dart' as _i68;
import '../features/debit/domain/use_case/update_debit_use.case.dart' as _i92;
import '../features/debit/presentation/cubit/debts_bloc.dart' as _i99;
import '../features/home/presentation/bloc/home/home_bloc.dart' as _i74;
import '../features/home/presentation/controller/summary_controller.dart'
    as _i34;
import '../features/home/presentation/cubit/overview/overview_cubit.dart'
    as _i82;
import '../features/home/presentation/cubit/summary/summary_cubit.dart' as _i88;
import '../features/profile/data/repository/profile_repository_impl.dart'
    as _i28;
import '../features/profile/domain/repository/profile_repository.dart' as _i27;
import '../features/profile/domain/use_case/image_picker_use_case.dart' as _i78;
import '../features/profile/domain/use_case/profile_use_case.dart' as _i84;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i83;
import '../features/recurring/data/data_sources/local_recurring_data_manager.dart'
    as _i23;
import '../features/recurring/data/data_sources/local_recurring_data_manager_impl.dart'
    as _i24;
import '../features/recurring/data/model/recurring.dart' as _i7;
import '../features/recurring/data/repository/recurring_repository_impl.dart'
    as _i30;
import '../features/recurring/domain/repository/recurring_repository.dart'
    as _i29;
import '../features/recurring/domain/use_case/add_recurring_use_case.dart'
    as _i45;
import '../features/recurring/domain/use_case/recurring_use_case.dart' as _i86;
import '../features/recurring/presentation/cubit/recurring_cubit.dart' as _i85;
import '../features/search/domain/use_case/filter_expense_use_case.dart'
    as _i87;
import '../features/search/presentation/cubit/search_cubit.dart' as _i101;
import '../features/settings/data/authenticate.dart' as _i5;
import '../features/settings/data/file_handler.dart' as _i63;
import '../features/settings/data/repository/csv_export_impl.dart' as _i62;
import '../features/settings/data/repository/json_export_import_impl.dart'
    as _i61;
import '../features/settings/data/repository/settings_repository_impl.dart'
    as _i32;
import '../features/settings/domain/repository/import_export.dart' as _i60;
import '../features/settings/domain/repository/settings_repository.dart'
    as _i31;
import '../features/settings/domain/use_case/csv_file_export_use_case.dart'
    as _i97;
import '../features/settings/domain/use_case/json_file_export_use_case.dart'
    as _i80;
import '../features/settings/domain/use_case/json_file_import_use_case.dart'
    as _i81;
import '../features/settings/domain/use_case/setting_use_case.dart' as _i35;
import '../features/settings/domain/use_case/settings_use_case.dart' as _i33;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i102;
import '../features/transaction/data/data_sources/local/transaction_data_manager.dart'
    as _i25;
import '../features/transaction/data/model/transaction_model.dart' as _i10;
import '../features/transaction/data/repository/transaction_repository_impl.dart'
    as _i39;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i38;
import '../features/transaction/domain/use_case/add_transaction_use_case.dart'
    as _i46;
import '../features/transaction/domain/use_case/delete_transaction_from_category_id_use_case.dart'
    as _i59;
import '../features/transaction/domain/use_case/delete_transaction_use_case.dart'
    as _i57;
import '../features/transaction/domain/use_case/delete_transactions_by_account_id_use_case.dart'
    as _i58;
import '../features/transaction/domain/use_case/get_transaction_use_case.dart'
    as _i70;
import '../features/transaction/domain/use_case/get_transactions_by_account_id_use_case.dart'
    as _i71;
import '../features/transaction/domain/use_case/get_transactions_by_category_id_use_case.dart'
    as _i72;
import '../features/transaction/domain/use_case/get_transactions_use_case.dart'
    as _i73;
import '../features/transaction/domain/use_case/transaction_use_case.dart'
    as _i75;
import '../features/transaction/domain/use_case/update_expense_use_case.dart'
    as _i40;
import '../features/transaction/presentation/bloc/transaction_bloc.dart'
    as _i89;
import 'module/hive_module.dart' as _i103;
import 'module/service_module.dart' as _i104;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final hiveBoxModule = _$HiveBoxModule();
  final serviceBoxModule = _$ServiceBoxModule();
  gh.singleton<_i3.AccountManager>(
    _i4.RemoteAccountManagerImpl(),
    instanceName: 'remote-account',
  );
  gh.singleton<_i5.Authenticate>(_i5.Authenticate());
  await gh.singletonAsync<_i6.Box<_i7.RecurringModel>>(
    () => hiveBoxModule.recurringBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i6.Box<_i8.DebitModel>>(
    () => hiveBoxModule.debtsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i6.Box<_i9.CategoryModel>>(
    () => hiveBoxModule.categoryBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i6.Box<_i10.TransactionModel>>(
    () => hiveBoxModule.expenseBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i6.Box<_i11.AccountModel>>(
    () => hiveBoxModule.accountBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i6.Box<_i12.DebitTransactionsModel>>(
    () => hiveBoxModule.transactionsBox,
    preResolve: true,
  );
  await gh.singletonAsync<_i6.Box<dynamic>>(
    () => hiveBoxModule.boxDynamic,
    instanceName: 'settings',
    preResolve: true,
  );
  gh.singleton<_i13.CountryRepository>(_i14.CountryRepositoryImpl());
  gh.singleton<_i15.DebitDataManager>(
      _i16.LocalDebitDataManagerImpl(debtBox: gh<_i6.Box<_i8.DebitModel>>()));
  gh.singleton<_i17.DeviceInfoPlugin>(
      serviceBoxModule.providesDeviceInfoPlugin());
  gh.singleton<_i18.EventBus>(serviceBoxModule.providerEventBus());
  gh.factory<_i19.GetCountriesUseCase>(
      () => _i19.GetCountriesUseCase(repository: gh<_i13.CountryRepository>()));
  gh.singleton<_i20.ImagePicker>(serviceBoxModule.providesImagePicker());
  gh.singleton<_i21.InAppReview>(serviceBoxModule.providesInAppReview());
  gh.singleton<_i22.LocalCategoryManager>(
      _i22.LocalCategoryManagerDataSourceImpl(
          gh<_i6.Box<_i9.CategoryModel>>()));
  gh.factory<_i23.LocalRecurringDataManager>(() =>
      _i24.LocalRecurringDataManagerImpl(gh<_i6.Box<_i7.RecurringModel>>()));
  gh.factory<_i25.LocalTransactionManager>(() =>
      _i25.LocalTransactionManagerImpl(gh<_i26.Box<_i10.TransactionModel>>()));
  gh.singleton<_i27.ProfileRepository>(_i28.ProfileRepositoryImpl(
    gh<_i20.ImagePicker>(),
    gh<_i6.Box<dynamic>>(instanceName: 'settings'),
  ));
  gh.singleton<_i29.RecurringRepository>(_i30.RecurringRepositoryImpl(
    gh<_i23.LocalRecurringDataManager>(),
    gh<_i25.LocalTransactionManager>(),
  ));
  gh.factory<_i31.SettingsRepository>(() => _i32.SettingsRepositoryImpl(
      gh<_i6.Box<dynamic>>(instanceName: 'settings')));
  gh.singleton<_i33.SettingsUseCase>(
      _i33.SettingsUseCase(gh<_i31.SettingsRepository>()));
  gh.singleton<_i34.SummaryController>(
      _i34.SummaryController(gh<_i35.SettingsUseCase>()));
  gh.singleton<_i36.TransactionDataManager>(
      _i37.LocalTransactionDataManagerImpl(
          transactionsBox: gh<_i6.Box<_i12.DebitTransactionsModel>>()));
  gh.singleton<_i38.TransactionRepository>(_i39.ExpenseRepositoryImpl(
      dataSource: gh<_i25.LocalTransactionManager>()));
  gh.singleton<_i40.UpdateTransactionUseCase>(_i40.UpdateTransactionUseCase(
      expenseRepository: gh<_i38.TransactionRepository>()));
  gh.singleton<_i3.AccountManager>(
    _i41.LocalAccountManagerImpl(accountBox: gh<_i6.Box<_i11.AccountModel>>()),
    instanceName: 'local-account',
  );
  gh.singleton<_i42.AccountRepository>(_i43.AccountRepositoryImpl(
      dataSource: gh<_i3.AccountManager>(instanceName: 'local-account')));
  gh.singleton<_i44.AddAccountUseCase>(
      _i44.AddAccountUseCase(accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i45.AddRecurringUseCase>(
      _i45.AddRecurringUseCase(gh<_i29.RecurringRepository>()));
  gh.singleton<_i46.AddTransactionUseCase>(_i46.AddTransactionUseCase(
      expenseRepository: gh<_i38.TransactionRepository>()));
  gh.singleton<_i47.CategoryRepository>(_i48.CategoryRepositoryImpl(
    dataSources: gh<_i22.LocalCategoryManager>(),
    expenseDataManager: gh<_i25.LocalTransactionManager>(),
  ));
  gh.factory<_i49.CountryPickerCubit>(() => _i49.CountryPickerCubit(
        gh<_i19.GetCountriesUseCase>(),
        gh<_i35.SettingsUseCase>(),
      ));
  gh.singleton<_i50.DebitRepository>(_i51.DebtRepositoryImpl(
    gh<_i36.TransactionDataManager>(),
    gh<_i15.DebitDataManager>(),
  ));
  gh.singleton<_i52.DeleteAccountUseCase>(_i52.DeleteAccountUseCase(
      accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i53.DeleteCategoryUseCase>(_i53.DeleteCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i54.DeleteDebitTransactionUseCase>(
      _i54.DeleteDebitTransactionUseCase(
          debtRepository: gh<_i50.DebitRepository>()));
  gh.singleton<_i55.DeleteDebitTransactionsByDebitIdUseCase>(
      _i55.DeleteDebitTransactionsByDebitIdUseCase(
          debtRepository: gh<_i50.DebitRepository>()));
  gh.singleton<_i56.DeleteDebitUseCase>(
      _i56.DeleteDebitUseCase(debtRepository: gh<_i50.DebitRepository>()));
  gh.singleton<_i57.DeleteTransactionUseCase>(_i57.DeleteTransactionUseCase(
      expenseRepository: gh<_i38.TransactionRepository>()));
  gh.singleton<_i58.DeleteTransactionsByAccountIdUseCase>(
      _i58.DeleteTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i38.TransactionRepository>()));
  gh.singleton<_i59.DeleteTransactionsByCategoryIdUseCase>(
      _i59.DeleteTransactionsByCategoryIdUseCase(
          transactionRepository: gh<_i38.TransactionRepository>()));
  gh.lazySingleton<_i60.Export>(
    () => _i61.JSONExportImpl(
      gh<_i3.AccountManager>(instanceName: 'local-account'),
      gh<_i22.LocalCategoryManager>(),
      gh<_i25.LocalTransactionManager>(),
      gh<_i15.DebitDataManager>(),
      gh<_i36.TransactionDataManager>(),
    ),
    instanceName: 'json_export',
  );
  gh.lazySingleton<_i60.Export>(
    () => _i62.CSVExport(
      gh<_i17.DeviceInfoPlugin>(),
      gh<_i3.AccountManager>(instanceName: 'local-account'),
      gh<_i22.LocalCategoryManager>(),
      gh<_i25.LocalTransactionManager>(),
    ),
    instanceName: 'csv',
  );
  gh.singleton<_i63.FileHandler>(_i63.FileHandler(
    gh<_i17.DeviceInfoPlugin>(),
    gh<_i3.AccountManager>(instanceName: 'local-account'),
    gh<_i22.LocalCategoryManager>(),
    gh<_i25.LocalTransactionManager>(),
  ));
  gh.singleton<_i64.GetAccountUseCase>(
      _i64.GetAccountUseCase(accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i65.GetAccountsUseCase>(
      _i65.GetAccountsUseCase(accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i66.GetCategoryUseCase>(_i66.GetCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i67.GetDebitTransactionsUseCase>(
      _i67.GetDebitTransactionsUseCase(
          debtRepository: gh<_i50.DebitRepository>()));
  gh.singleton<_i68.GetDebitUseCase>(
      _i68.GetDebitUseCase(debtRepository: gh<_i50.DebitRepository>()));
  gh.singleton<_i69.GetDefaultCategoriesUseCase>(
      _i69.GetDefaultCategoriesUseCase(
          categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i70.GetTransactionUseCase>(_i70.GetTransactionUseCase(
      transactionRepository: gh<_i38.TransactionRepository>()));
  gh.singleton<_i71.GetTransactionsByAccountIdUseCase>(
      _i71.GetTransactionsByAccountIdUseCase(
          expenseRepository: gh<_i38.TransactionRepository>()));
  gh.singleton<_i72.GetTransactionsByCategoryIdUseCase>(
      _i72.GetTransactionsByCategoryIdUseCase(
          expenseRepository: gh<_i38.TransactionRepository>()));
  gh.singleton<_i73.GetTransactionsUseCase>(_i73.GetTransactionsUseCase(
      expenseRepository: gh<_i38.TransactionRepository>()));
  gh.factory<_i74.HomeBloc>(() => _i74.HomeBloc(
        gh<_i75.GetTransactionsUseCase>(),
        gh<_i76.GetDefaultCategoriesUseCase>(),
        gh<_i77.GetAccountUseCase>(),
        gh<_i76.GetCategoryUseCase>(),
        gh<_i75.GetTransactionsByCategoryIdUseCase>(),
      ));
  gh.singleton<_i78.ImagePickerUseCase>(
      _i78.ImagePickerUseCase(gh<_i27.ProfileRepository>()));
  gh.lazySingleton<_i60.Import>(
    () => _i61.JSONImportImpl(
      gh<_i17.DeviceInfoPlugin>(),
      gh<_i3.AccountManager>(instanceName: 'local-account'),
      gh<_i22.LocalCategoryManager>(),
      gh<_i25.LocalTransactionManager>(),
      gh<_i36.TransactionDataManager>(),
      gh<_i15.DebitDataManager>(),
    ),
    instanceName: 'json_import',
  );
  gh.singleton<_i79.InApp>(_i79.InApp(gh<_i21.InAppReview>()));
  gh.singleton<_i80.JSONFileExportUseCase>(_i80.JSONFileExportUseCase(
    gh<_i31.SettingsRepository>(),
    gh<_i60.Export>(instanceName: 'json_export'),
  ));
  gh.singleton<_i81.JSONFileImportUseCase>(_i81.JSONFileImportUseCase(
    gh<_i31.SettingsRepository>(),
    gh<_i60.Import>(instanceName: 'json_import'),
  ));
  gh.factory<_i82.OverviewCubit>(() => _i82.OverviewCubit(
        gh<_i75.GetTransactionsUseCase>(),
        gh<_i76.GetCategoryUseCase>(),
        gh<_i76.GetDefaultCategoriesUseCase>(),
      ));
  gh.factory<_i83.ProfileCubit>(() => _i83.ProfileCubit(
        gh<_i84.ImagePickerUseCase>(),
        gh<_i6.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.factory<_i85.RecurringCubit>(
      () => _i85.RecurringCubit(gh<_i86.AddRecurringUseCase>()));
  gh.singleton<_i87.SearchUseCase>(
      _i87.SearchUseCase(gh<_i38.TransactionRepository>()));
  gh.factory<_i88.SummaryCubit>(() => _i88.SummaryCubit(
        gh<_i18.EventBus>(),
        gh<_i75.GetTransactionsUseCase>(),
        gh<_i6.Box<dynamic>>(instanceName: 'settings'),
      ));
  gh.factory<_i89.TransactionBloc>(() => _i89.TransactionBloc(
        gh<_i33.SettingsUseCase>(),
        getTransactionUseCase: gh<_i75.GetTransactionUseCase>(),
        accountUseCase: gh<_i77.GetAccountUseCase>(),
        addTransactionUseCase: gh<_i75.AddTransactionUseCase>(),
        deleteTransactionUseCase: gh<_i75.DeleteTransactionUseCase>(),
        updateTransactionUseCase: gh<_i75.UpdateTransactionUseCase>(),
        accountsUseCase: gh<_i77.GetAccountsUseCase>(),
        getDefaultCategoriesUseCase: gh<_i76.GetDefaultCategoriesUseCase>(),
      ));
  gh.singleton<_i90.UpdateAccountUseCase>(_i90.UpdateAccountUseCase(
      accountRepository: gh<_i42.AccountRepository>()));
  gh.singleton<_i91.UpdateCategoryUseCase>(_i91.UpdateCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i92.UpdateDebitUseCase>(
      _i92.UpdateDebitUseCase(debtRepository: gh<_i50.DebitRepository>()));
  gh.factory<_i93.AccountBloc>(() => _i93.AccountBloc(
        gh<_i77.GetAccountUseCase>(),
        gh<_i77.DeleteAccountUseCase>(),
        gh<_i75.GetTransactionsByAccountIdUseCase>(),
        gh<_i77.AddAccountUseCase>(),
        gh<_i66.GetCategoryUseCase>(),
        gh<_i75.DeleteTransactionsByAccountIdUseCase>(),
        gh<_i77.UpdateAccountUseCase>(),
        gh<_i19.GetCountriesUseCase>(),
      ));
  gh.singleton<_i94.AddCategoryUseCase>(_i94.AddCategoryUseCase(
      categoryRepository: gh<_i47.CategoryRepository>()));
  gh.singleton<_i95.AddDebitTransactionUseCase>(_i95.AddDebitTransactionUseCase(
      debtRepository: gh<_i50.DebitRepository>()));
  gh.singleton<_i96.AddDebitUseCase>(
      _i96.AddDebitUseCase(debtRepository: gh<_i50.DebitRepository>()));
  gh.singleton<_i97.CSVFileExportUseCase>(_i97.CSVFileExportUseCase(
    gh<_i31.SettingsRepository>(),
    gh<_i60.Export>(instanceName: 'csv'),
  ));
  gh.factory<_i98.CategoryBloc>(() => _i98.CategoryBloc(
        getCategoryUseCase: gh<_i76.GetCategoryUseCase>(),
        addCategoryUseCase: gh<_i76.AddCategoryUseCase>(),
        deleteCategoryUseCase: gh<_i76.DeleteCategoryUseCase>(),
        deleteExpensesFromCategoryIdUseCase:
            gh<_i75.DeleteTransactionsByCategoryIdUseCase>(),
        updateCategoryUseCase: gh<_i76.UpdateCategoryUseCase>(),
      ));
  gh.factory<_i99.DebitBloc>(() => _i99.DebitBloc(
        addDebtUseCase: gh<_i100.AddDebitUseCase>(),
        getDebtUseCase: gh<_i100.GetDebitUseCase>(),
        getTransactionsUseCase: gh<_i100.GetDebitTransactionsUseCase>(),
        addTransactionUseCase: gh<_i100.AddDebitTransactionUseCase>(),
        updateDebtUseCase: gh<_i100.UpdateDebitUseCase>(),
        deleteDebtUseCase: gh<_i100.DeleteDebitUseCase>(),
        deleteDebitTransactionUseCase:
            gh<_i100.DeleteDebitTransactionUseCase>(),
        deleteDebitTransactionsByDebitIdUseCase:
            gh<_i55.DeleteDebitTransactionsByDebitIdUseCase>(),
      ));
  gh.factory<_i101.SearchCubit>(
      () => _i101.SearchCubit(gh<_i87.SearchUseCase>()));
  gh.factory<_i102.SettingCubit>(() => _i102.SettingCubit(
        gh<_i75.GetTransactionsUseCase>(),
        gh<_i76.GetDefaultCategoriesUseCase>(),
        gh<_i75.UpdateTransactionUseCase>(),
        gh<_i35.JSONFileImportUseCase>(),
        gh<_i35.JSONFileExportUseCase>(),
        gh<_i35.SettingsUseCase>(),
        gh<_i35.CSVFileExportUseCase>(),
      ));
  return getIt;
}

class _$HiveBoxModule extends _i103.HiveBoxModule {}

class _$ServiceBoxModule extends _i104.ServiceBoxModule {}
