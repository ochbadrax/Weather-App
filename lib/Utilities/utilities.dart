import 'package:intl/intl.dart';
class Utilities 
{
  Map<dynamic, String> imageMap = 
  {
    "Partially cloudy": "assets/images/nightRain.png",
    "Overcast": "assets/images/sunSlowRain.png",
    "Clear": "assets/images/wind.png",
    "null": "assets/images/nightStarRain.png",
  };
  static String formateDate(DateTime date)
  {
    String formateDate = DateFormat('EEEE d MMM').format(date);
    return formateDate;
  }
  static String extractDate(String date)
  {
    DateTime dateTime = DateTime.parse(date);
    String formateDate = DateFormat("d").format(dateTime);
    return formateDate;
  }
  static String extractDay(String date)
  {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat("EEEE").format(dateTime);
    String abbreviatedDay = formattedDate.substring(0, 3);
    return abbreviatedDay;
  }
  static String formateTime(String time) 
  {
    DateFormat dateFormat = DateFormat("hh:mm a");
    DateTime dateTime = DateTime.parse("2024-02-01T$time");
    String timeIn12HourFormat = dateFormat.format(dateTime);
    return timeIn12HourFormat;
  }
  static String currentTime()
  {
    DateFormat dateFormat = DateFormat("hh:mm a");
    DateTime now = DateTime.now();
    String time = dateFormat.format(now);
    return time;
  }
  static String formateTimeWithoutAmPm(String time)
  {
    DateFormat dateFormat = DateFormat("hh:mm");
    DateTime dateTime = DateTime.parse("2024-02-01T$time");
    String timeIn24HourFormat = dateFormat.format(dateTime);
    return timeIn24HourFormat;
  }
  static bool checkTime(String time)
  {
    DateFormat dateFormat = DateFormat("hh a");
    DateTime dateTime = DateTime.parse("2024-02-01T$time");
    DateTime now = DateTime.now();
    return dateFormat.format(dateTime) == dateFormat.format(now);
  }
}