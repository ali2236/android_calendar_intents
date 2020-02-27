library android_calendar_intents;

import 'package:android_intent/android_intent.dart';

class CalendarIntents {

 static void showAddEventScreen({
  String title,
  String description,
  DateTime startTime,
  DateTime endTime,
  bool allDay,
}){
    // TODO
  }

  static void showEventScreen(int eventId){
    final intent = AndroidIntent(
      action: "android.intent.action.VIEW",
      data: "content://com.android.calendar/events/$eventId",
    );
    intent.launch();
  }

}
