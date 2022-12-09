class DateTimeUtils {
  static bool isCurrentTimeRangeInHoursAndMinutes(DateTime startDate, DateTime endDate) {
    final now = DateTime.now();
    final start = DateTime(startDate.hour, startDate.minute);
    final end = DateTime(endDate.hour, endDate.minute);
    return now.isAfter(start) && now.isBefore(end);
  }

  static bool isAfter(DateTime date) {
    final now = DateTime.now();
    final start = DateTime(date.hour, date.minute);
    return now.isAfter(start);
  }

  static bool isBefore(DateTime date) {
    final now = DateTime.now();
    final end = DateTime(date.hour, date.minute);
    return now.isBefore(end);
  }
}
