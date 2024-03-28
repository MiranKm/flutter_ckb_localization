import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ckb_localization/ckb_material_localization_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

class _CkbCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const _CkbCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ckb';

  @override
  bool shouldReload(_CkbCupertinoLocalizationsDelegate old) => false;

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    const String localeName = 'ckb';

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: ckbLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(ckbDateSymbols),
    );
    return SynchronousFuture<CupertinoLocalizations>(
      CkbCupertinoLocalizations(
        localeName: "ckb",
        fullYearFormat: intl.DateFormat('y', localeName),
        shortDateFormat: intl.DateFormat('MM/DD/YY', localeName),
        compactDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        shortMonthDayFormat: intl.DateFormat('MM/DD', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'ar'),

        /*   fullYearFormat: intl.DateFormat('y', localeName),
        shortDateFormat: intl.DateFormat('MM/DD/YY', localeName),
        compactDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        shortMonthDayFormat: intl.DateFormat('MM/DD', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'ar' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'ar'),*/
      ),
    );
  }
}

class CkbCupertinoLocalizations extends GlobalCupertinoLocalizations {
  CkbCupertinoLocalizations({
    String localeName = 'ckb',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat shortDateFormat,
    required intl.DateFormat compactDateFormat,
    required intl.DateFormat shortMonthDayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat longDateFormat,
    required intl.DateFormat yearMonthFormat,
    required intl.NumberFormat decimalFormat,
    required intl.NumberFormat twoDigitZeroPaddedFormat,
  }) : super(
          localeName: "ckb",
          doubleDigitMinuteFormat: intl.DateFormat("#", localeName),
          dayFormat: intl.DateFormat("#", localeName),
          singleDigitHourFormat: intl.DateFormat("#", localeName),
          singleDigitMinuteFormat: intl.DateFormat("#", localeName),
          singleDigitSecondFormat: intl.DateFormat("#", localeName),
          fullYearFormat: fullYearFormat,
          mediumDateFormat: mediumDateFormat,
          decimalFormat: decimalFormat,
        );
  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      _CkbCupertinoLocalizationsDelegate();

  String get aboutListTileTitleRaw => 'دەربارەی \$applicationName';

  @override
  String get alertDialogLabel => 'ئاگادارکردنەوە';

  @override
  String get anteMeridiemAbbreviation => 'پ.ن';

  @override
  String get backButtonTooltip => 'دواوە';

  @override
  String get calendarModeButtonLabel => 'گۆڕین بۆ ڕۆژژمێر';

  @override
  String get cancelButtonLabel => 'هەڵوەشاندنەوه';

  @override
  String get closeButtonLabel => 'داخستن';

  @override
  String get closeButtonTooltip => 'داخستن';

  @override
  String get collapsedIconTapHint => 'فراوانکردن';

  @override
  String get continueButtonLabel => 'بەردەوام بە';

  @override
  String get copyButtonLabel => 'کۆپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get dateHelpText => 'mm/dd/yyyy';

  @override
  String get dateInputLabel => 'بەروار بنووسە';

  @override
  String get dateOutOfRangeLabel => 'دەرەوەی مەودایە';

  @override
  String get datePickerHelpText => 'بەروار دیاری بکە';

  @override
  String get dateRangeEndDateSemanticLabelRaw => 'بەرواری کۆتایی \$fullDate';

  @override
  String get dateRangeEndLabel => 'بەرواری کۆتایی';

  @override
  String get dateRangePickerHelpText => 'دەست نیشانکردنی مەودا';

  @override
  String get dateRangeStartDateSemanticLabelRaw => 'بەرواری دەستپێکردن \$fullDate';

  @override
  String get dateRangeStartLabel => 'بەرواری دەستپێکردن';

  @override
  String get dateSeparator => '/';

  @override
  String get deleteButtonTooltip => 'سڕینەوە';

  @override
  String get dialModeButtonLabel => 'گۆڕین بۆ دۆخی هەڵبژێری داواکردن';

  @override
  String get dialogLabel => 'دیالۆگ';

  @override
  String get drawerLabel => 'لیستی ڕێنیشاندەر';

  @override
  String get expandedIconTapHint => 'نوشتانەوە';

  @override
  String get hideAccountsLabel => 'شاردنەوەی ئەژمێرەکان';

  @override
  String get inputDateModeButtonLabel => 'گۆڕین بۆ نووسین';

  @override
  String get inputTimeModeButtonLabel => 'گۆڕین بۆ دۆخی تێکردنی دەق';

  @override
  String get invalidDateFormatLabel => 'فۆرماتی نادروست.';

  @override
  String get invalidDateRangeLabel => 'مەودایەکی نادروست.';

  @override
  String get invalidTimeLabel => 'کاتێکی دروست بنووسە';

  @override
  String get licensesPackageDetailTextOne => '١ مۆڵەت';

  @override
  String get licensesPackageDetailTextOther => '\$licenseCount مۆڵەت';

  @override
  String get licensesPackageDetailTextZero => 'مۆڵەت نیە';

  @override
  String get licensesPageTitle => 'مۆڵەتەکان';

  @override
  String get modalBarrierDismissLabel => 'دەرکردن';

  @override
  String get moreButtonTooltip => 'زیاتر';

  @override
  String get nextMonthTooltip => 'مانگی داهاتوو';

  @override
  String get nextPageTooltip => 'لاپەڕەی داهاتوو';

  @override
  String get okButtonLabel => 'باشه';

  @override
  String get openAppDrawerTooltip => 'کردنەوەی لیستی ڕێنیشاندەر';

  @override
  String get pageRowsInfoTitleRaw => '\$firstRow–\$lastRow لە \$rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw => '\$firstRow–\$lastRow تا \$rowCount';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get popupMenuLabel => 'لیستی دەرکەوتە';

  @override
  String get postMeridiemAbbreviation => 'د.ن';

  @override
  String get previousMonthTooltip => 'مانگی پێشوو';

  @override
  String get previousPageTooltip => 'لاپەڕەی پێشوو';

  @override
  String get refreshIndicatorSemanticLabel => 'نوێکردنەوە';

  @override
  String? get remainingTextFieldCharacterCountFew => "";

  @override
  List<String> get narrowWeekdays => ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'];

  @override
  String? get remainingTextFieldCharacterCountMany => "";

  @override
  String get remainingTextFieldCharacterCountOne => '١ پیت ماوە';

  @override
  String get remainingTextFieldCharacterCountOther => '\$remainingCount پیتەکان ماون';

  @override
  String? get remainingTextFieldCharacterCountTwo => "";

  @override
  String get remainingTextFieldCharacterCountZero => 'هیچ پیتێک نەماوەتەوە';

  @override
  String get reorderItemDown => 'بڕۆ خوارەوە';

  @override
  String get reorderItemLeft => 'بڕۆ لای چەپ';

  @override
  String get reorderItemRight => 'بڕۆ لای راست';

  @override
  String get reorderItemToEnd => 'بڕۆ کۆتایی';

  @override
  String get reorderItemToStart => 'بڕۆ سەرەتا';

  @override
  String get reorderItemUp => 'بڕۆ سەرەوە';

  @override
  String get rowsPerPageTitle => 'ڕیزەکان بۆ هەر پەڕەیەک:';

  String get saveButtonLabel => 'هەڵگرتن';

  ScriptCategory get scriptCategory => ScriptCategory.tall;

  String get searchFieldLabel => 'گەڕان';

  String get selectAllButtonLabel => 'هەموو هەڵبژێرە';

  String get selectYearSemanticsLabel => 'ساڵ هەڵبژێرە';

  String? get selectedRowCountTitleFew => "";

  String? get selectedRowCountTitleMany => "";

  String get selectedRowCountTitleOne => '١ دانە هەڵبژێردرا';

  String get selectedRowCountTitleOther => '\$selectedRowCount هەڵبژێردراو';

  String? get selectedRowCountTitleTwo => "";

  String get selectedRowCountTitleZero => 'هیچ هەڵنەبژێراوە';

  String get showAccountsLabel => 'پیشاندانی ئەژمێرەکان';

  String get showMenuTooltip => 'پیشاندانی پێڕست';

  String get signedInLabel => 'چوونە ژوورەوە';

  String get tabLabelRaw => 'خشتەبەندی \$tabIndex لە \$tabCount';

  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  String get timePickerDialHelpText => 'کات هەڵبژێرە';

  String get timePickerHourLabel => 'کاتژمێر';

  String get timePickerHourModeAnnouncement => 'کاتژمێر هەڵبژێرە';

  String get timePickerInputHelpText => 'کات بنووسە';

  String get timePickerMinuteLabel => 'خولەک';

  String get timePickerMinuteModeAnnouncement => 'خولەک هەڵبژێرە';

  String get unspecifiedDate => 'بەروار';

  String get unspecifiedDateRange => 'مەودای بەروار';

  String get viewLicensesButtonLabel => 'پیشاندانی مۆڵەتەکان';

  String get firstPageTooltip => "تایبەتمەندی پەیجی یەکەم";

  String get lastPageTooltip => "تایبەتمەندی پەیجی کۆتایی";

  @override
  String get datePickerDateOrderString => "تاریخی ڕیز";

  @override
  String get datePickerDateTimeOrderString => "ڕووداوی تایبەتی";

  @override
  String? get datePickerHourSemanticsLabelOther => "کاتژمێری تایبەتی";

  @override
  String? get datePickerMinuteSemanticsLabelOther => "خولەکی تایبەتی";

  @override
  String get searchTextFieldPlaceholderLabel => "بگەڕێ بۆ";

  @override
  String get tabSemanticsLabelRaw => "پەیجی";

  @override
  String? get timerPickerHourLabelOther => "کاتژمێری تایبەتی";

  @override
  String? get timerPickerMinuteLabelOther => "خولەکی تایبەتی";

  @override
  String? get timerPickerSecondLabelOther => "چرکە تایبەتی";

  @override
  String get todayLabel => "ئەمڕوو";

  @override
  String get noSpellCheckReplacementsLabel => "هیچ پارگەیەكی چاکناوی نیشاندەر نیشانناکرێت";

  @override
  // TODO: implement lookUpButtonLabel
  String get lookUpButtonLabel => 'بگەڕێ';

  @override
  // TODO: implement menuDismissLabel
  String get menuDismissLabel => 'داخستن';

  @override
  // TODO: implement searchWebButtonLabel
  String get searchWebButtonLabel => 'گەڕان لە وێب';

  @override
  // TODO: implement shareButtonLabel
  String get shareButtonLabel => 'هاوبەشی کردن';

  @override
  // TODO: implement clearButtonLabel
  String get clearButtonLabel => 'سڕینەوە';
}
