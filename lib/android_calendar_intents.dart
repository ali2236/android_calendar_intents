library android_calendar_intents;

import 'package:android_intent/android_intent.dart';

class CalendarIntents {

 static void showAddEventScreen({
  String title,
  String description,
  DateTime beginTime,
  DateTime endTime,
  bool allDay,
}){
   final intent = AndroidIntent(
       action: "android.intent.action.INSERT",
       data: 'content://com.android.calendar/events',
       arguments: {
         if(title!=null) 'title' : title,
         if(description!=null) 'description' : description,
         if(beginTime!=null) 'beginTime' : beginTime.millisecondsSinceEpoch,
         if(endTime!=null) 'endTime' : endTime.millisecondsSinceEpoch,
         if(allDay!=null) 'allDay' : allDay,
       }
   );
   intent.launch();
  }

  static void showEventScreen(int eventId){
    final intent = AndroidIntent(
      action: "android.intent.action.VIEW",
      data: "content://com.android.calendar/events/$eventId",
    );
    intent.launch();
  }

}
