import 'package:adhan_dart/adhan_dart.dart';
//import"package:waytodeen/home.dart";
main(){
  //dynamic latitude,longitude;
  Coordinates coordinates= Coordinates(23.8041, 90.4152);
  
  DateTime date =DateTime.now(); 
  CalculationParameters params=CalculationMethod.MuslimWorldLeague();
  PrayerTimes prayerTimes = 
    PrayerTimes(coordinates, date, params, precision: true);
    /// all salats time storation
    DateTime ? fajarTime= prayerTimes.fajr!.toLocal() ;
    DateTime ? dhuhrTime= prayerTimes.dhuhr!.toLocal() ;
    DateTime ? asarTime= prayerTimes.asr!.toLocal() ;
    DateTime ? maghribTime= prayerTimes.maghrib!.toLocal() ;
    DateTime ? ishaTime= prayerTimes.isha!.toLocal() ;
    //Qibla qibla =Qibla();
     print('fajar salat time =');
     print(asarTime);
     
     print(maghribTime);
     print(ishaTime);
    /// qiblas cordinate set
      //double degree =Qibla.qibla(coordinates);
       double degree =Qibla.qibla(coordinates);
      print(degree);
      print(date);
    /// 
   
}