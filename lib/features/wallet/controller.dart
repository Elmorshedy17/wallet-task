import 'dart:io';
import 'package:wallet_task/app_core/app_core.dart';
import 'package:rxdart/rxdart.dart';
import 'package:hijri_picker/hijri_picker.dart';
import 'package:hijri/hijri_calendar.dart';

class WalletManager extends Manager {

  final BehaviorSubject<HijriCalendar> _hijriPickerFromSubject = BehaviorSubject();
  Stream<HijriCalendar> get hijriFromPicker$ => _hijriPickerFromSubject.stream;
  Sink<HijriCalendar> get inHijriFromPicker => _hijriPickerFromSubject.sink;
  HijriCalendar get hijriFromPickerValue => _hijriPickerFromSubject.value;



  final BehaviorSubject<HijriCalendar> _hijriPickerToSubject = BehaviorSubject();
  Stream<HijriCalendar> get hijriToPicker$ => _hijriPickerToSubject.stream;
  Sink<HijriCalendar> get inHijriToPicker => _hijriPickerToSubject.sink;
  HijriCalendar get hijriToPickerValue => _hijriPickerToSubject.value;





  @override
  void dispose() {
    _hijriPickerFromSubject.close();
    _hijriPickerToSubject.close();
  }

//   @override
//   // void clearSubject() {}
}




