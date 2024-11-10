// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(day) =>
      "Before ${Intl.plural(day, zero: 'Today', one: '1 day', other: '${day} days')}";

  static String m1(hour) =>
      "Before ${Intl.plural(hour, one: '1 hour', other: '${hour} hours')}";

  static String m2(min) =>
      "${Intl.plural(min, zero: 'Just now', one: 'einer Minute', other: '${min} Minuten')}";

  static String m3(week) =>
      "Before ${Intl.plural(week, zero: 'This week', one: '1 week', other: '${week} weeks')}";

  static String m4(date) => "ended am ${date}";

  static String m5(date) => "von ${date}";

  static String m6(day) =>
      "In ${Intl.plural(day, zero: 'Today', one: '1 day', other: '${day} days')}";

  static String m7(hour) =>
      "In ${Intl.plural(hour, one: '1 hour', other: '${hour} hours')}";

  static String m8(min) =>
      "${Intl.plural(min, zero: 'Now', one: 'In a minute', other: 'in ${min} minutes')}";

  static String m9(week) =>
      "In ${Intl.plural(week, zero: 'This week', one: '1 week', other: '${week} weeks')}";

  static String m10(email) => "Password reset mail send to ${email}";

  static String m11(date) => "startet am ${date}";

  static String m12(date) => "bis ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "abort": MessageLookupByLibrary.simpleMessage("Abort"),
        "abort_and_return_check":
            MessageLookupByLibrary.simpleMessage("Abort and return Check"),
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "account_name": MessageLookupByLibrary.simpleMessage("Account name"),
        "account_number":
            MessageLookupByLibrary.simpleMessage("Account number"),
        "achievement": MessageLookupByLibrary.simpleMessage("Achievement"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "april": MessageLookupByLibrary.simpleMessage("April"),
        "april_short": MessageLookupByLibrary.simpleMessage("Apr"),
        "august": MessageLookupByLibrary.simpleMessage("August"),
        "august_short": MessageLookupByLibrary.simpleMessage("Aug"),
        "bank_details": MessageLookupByLibrary.simpleMessage("Bank details"),
        "bankname": MessageLookupByLibrary.simpleMessage("Bank name"),
        "before_x_days": m0,
        "before_x_hours": m1,
        "before_x_minutes": m2,
        "before_x_weeks": m3,
        "begin_check": MessageLookupByLibrary.simpleMessage("Begin Check"),
        "billing_info":
            MessageLookupByLibrary.simpleMessage("Billing Information"),
        "birthday": MessageLookupByLibrary.simpleMessage("Birthday"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "close_app": MessageLookupByLibrary.simpleMessage("Close App"),
        "country": MessageLookupByLibrary.simpleMessage("Country"),
        "create_account": MessageLookupByLibrary.simpleMessage("Create User?"),
        "december": MessageLookupByLibrary.simpleMessage("December"),
        "december_short": MessageLookupByLibrary.simpleMessage("Dec"),
        "delete_changes":
            MessageLookupByLibrary.simpleMessage("Delete changes"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "end_at_date": m4,
        "exception_invalid_input_data_received":
            MessageLookupByLibrary.simpleMessage(
                "The data received is invalid. Please check for an new app version"),
        "exception_localized_format": MessageLookupByLibrary.simpleMessage(
            "An error occurred, please check for a new app version"),
        "exception_network_bad_certificate":
            MessageLookupByLibrary.simpleMessage(
                "The connection could not be established, please try again"),
        "exception_network_bad_response": MessageLookupByLibrary.simpleMessage(
            "An error occurred, please try again"),
        "exception_network_cancel": MessageLookupByLibrary.simpleMessage(
            "The connection was cancelled, please try again"),
        "exception_network_connection_error":
            MessageLookupByLibrary.simpleMessage(
                "The connection could not be established, please try again"),
        "exception_network_connection_timeout":
            MessageLookupByLibrary.simpleMessage(
                "A connection error occurred, please try again"),
        "exception_network_receive_timeout":
            MessageLookupByLibrary.simpleMessage(
                "A connection error occurred, please try again"),
        "exception_network_send_timeout": MessageLookupByLibrary.simpleMessage(
            "A connection error occurred, please try again"),
        "exception_network_unknown": MessageLookupByLibrary.simpleMessage(
            "A network error occurred, please try again"),
        "exception_parse": MessageLookupByLibrary.simpleMessage(
            "The received data is malformed"),
        "exception_unknown": MessageLookupByLibrary.simpleMessage(
            "An error occurred, please try again later"),
        "february": MessageLookupByLibrary.simpleMessage("February"),
        "february_short": MessageLookupByLibrary.simpleMessage("Feb"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "first_name": MessageLookupByLibrary.simpleMessage("Firstname"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "friday": MessageLookupByLibrary.simpleMessage("Friday"),
        "friday_short": MessageLookupByLibrary.simpleMessage("Fri"),
        "from_date": m5,
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "imprint": MessageLookupByLibrary.simpleMessage("Imprint"),
        "in_x_days": m6,
        "in_x_hours": m7,
        "in_x_minutes": m8,
        "in_x_weeks": m9,
        "inquiry": MessageLookupByLibrary.simpleMessage("Inquiry"),
        "january": MessageLookupByLibrary.simpleMessage("January"),
        "january_short": MessageLookupByLibrary.simpleMessage("Jan"),
        "july": MessageLookupByLibrary.simpleMessage("July"),
        "july_short": MessageLookupByLibrary.simpleMessage("Jul"),
        "june": MessageLookupByLibrary.simpleMessage("June"),
        "june_short": MessageLookupByLibrary.simpleMessage("Jun"),
        "last_name": MessageLookupByLibrary.simpleMessage("Lastname"),
        "last_saved": MessageLookupByLibrary.simpleMessage("Last saved: "),
        "locked": MessageLookupByLibrary.simpleMessage("Locked"),
        "loggedin": MessageLookupByLibrary.simpleMessage("Logged In"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "march": MessageLookupByLibrary.simpleMessage("March"),
        "march_short": MessageLookupByLibrary.simpleMessage("Mar"),
        "marker_label": MessageLookupByLibrary.simpleMessage("Check"),
        "may": MessageLookupByLibrary.simpleMessage("May"),
        "may_short": MessageLookupByLibrary.simpleMessage("May"),
        "median": MessageLookupByLibrary.simpleMessage("Average"),
        "message_enter_registered_email":
            MessageLookupByLibrary.simpleMessage("Enter your registered email"),
        "message_enter_secure_password":
            MessageLookupByLibrary.simpleMessage("Secure password"),
        "message_enter_valid_email_like":
            MessageLookupByLibrary.simpleMessage("name@adresse.com"),
        "message_password_email_send": m10,
        "message_password_is_empty": MessageLookupByLibrary.simpleMessage(
            "The password cannot be empty"),
        "message_sending_email":
            MessageLookupByLibrary.simpleMessage("Sending email..."),
        "message_wait_for_login":
            MessageLookupByLibrary.simpleMessage("Logging in, please wait..."),
        "message_wait_for_logout":
            MessageLookupByLibrary.simpleMessage("Logging out, please wait..."),
        "monday": MessageLookupByLibrary.simpleMessage("Monday"),
        "monday_short": MessageLookupByLibrary.simpleMessage("Mon"),
        "never": MessageLookupByLibrary.simpleMessage("Never"),
        "no_description":
            MessageLookupByLibrary.simpleMessage("no description"),
        "november": MessageLookupByLibrary.simpleMessage("November"),
        "november_short": MessageLookupByLibrary.simpleMessage("Nov"),
        "october": MessageLookupByLibrary.simpleMessage("October"),
        "october_short": MessageLookupByLibrary.simpleMessage("Oct"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "phone_number_1": MessageLookupByLibrary.simpleMessage("Phone 1"),
        "phone_number_1_hint":
            MessageLookupByLibrary.simpleMessage("e.g. Smartphone number"),
        "phone_number_2": MessageLookupByLibrary.simpleMessage("Phone 2"),
        "phone_number_2_hint":
            MessageLookupByLibrary.simpleMessage("e.g. Landline number"),
        "privacy": MessageLookupByLibrary.simpleMessage("Privacy"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "request_password":
            MessageLookupByLibrary.simpleMessage("Request Password"),
        "reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "salutation": MessageLookupByLibrary.simpleMessage("Salutation"),
        "saturday": MessageLookupByLibrary.simpleMessage("Saturday"),
        "saturday_short": MessageLookupByLibrary.simpleMessage("Sa"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "screen_billing_info":
            MessageLookupByLibrary.simpleMessage("Billing Information"),
        "screen_check_info":
            MessageLookupByLibrary.simpleMessage("Information"),
        "screen_check_overview":
            MessageLookupByLibrary.simpleMessage("Check Overview"),
        "screen_gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "screen_home": MessageLookupByLibrary.simpleMessage("Home"),
        "screen_imprint": MessageLookupByLibrary.simpleMessage("Imprint"),
        "screen_license": MessageLookupByLibrary.simpleMessage("License"),
        "screen_notification":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "screen_personal_info":
            MessageLookupByLibrary.simpleMessage("Personal Info"),
        "screen_privacy": MessageLookupByLibrary.simpleMessage("Privacy"),
        "screen_profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "screen_settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "screen_stats": MessageLookupByLibrary.simpleMessage("Statistics"),
        "september": MessageLookupByLibrary.simpleMessage("September"),
        "september_short": MessageLookupByLibrary.simpleMessage("Sep"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "start_at_date": m11,
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "street": MessageLookupByLibrary.simpleMessage("Street"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sunday"),
        "sunday_short": MessageLookupByLibrary.simpleMessage("Sun"),
        "surveys": MessageLookupByLibrary.simpleMessage("Surveys"),
        "swift_code": MessageLookupByLibrary.simpleMessage("Swift code"),
        "thursday": MessageLookupByLibrary.simpleMessage("Thursday"),
        "thursday_short": MessageLookupByLibrary.simpleMessage("Thu"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("Tomorrow"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tuesday"),
        "tuesday_short": MessageLookupByLibrary.simpleMessage("Tue"),
        "unbounded_date":
            MessageLookupByLibrary.simpleMessage("Without time restriction"),
        "until_date": m12,
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "vatno": MessageLookupByLibrary.simpleMessage("VAT number"),
        "vatno_hint": MessageLookupByLibrary.simpleMessage("Valued Added Tax"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Wednesday"),
        "wednesday_short": MessageLookupByLibrary.simpleMessage("Wed"),
        "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
        "zip": MessageLookupByLibrary.simpleMessage("Zip Code")
      };
}
