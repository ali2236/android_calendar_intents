library android_calendar_intents;

import 'package:android_intent/android_intent.dart';

class CalendarIntents {

 static Future<void> showAddEventScreen({
  String title,
  String description,
  DateTime beginTime,
  DateTime endTime,
  bool allDay,
}) async{
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
   return await intent.launch();
  }

  static Future<void> showEventScreen(String eventId) async{
    final intent = AndroidIntent(
      action: "android.intent.action.VIEW",
      data: "content://com.android.calendar/events/$eventId",
    );
    return await intent.launch();
  }

}
