import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _KuMaterialLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KuMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KuWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KuMaterialLocalizationsDelegate old) => false;
}

class KuWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KuMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => ui.TextDirection.rtl;

  @override
  String get reorderItemDown => 'مالپارێزەی فازیبینی پایین';

  @override
  String get reorderItemLeft => 'مالپارێزەی فازیبینی لای چۆپ';

  @override
  String get reorderItemRight => 'مالپارێزەی فازیبینی لای ڕاست';

  @override
  String get reorderItemToEnd => 'مالپارێزەی فازیبینی بۆ کۆتایی';

  @override
  String get reorderItemToStart => 'مالپارێزەی فازیبینی بۆ دەستنیشان';

  @override
  String get reorderItemUp => 'مالپارێزەی فازیبینی پارێزەیین';
}
