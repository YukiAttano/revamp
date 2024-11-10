// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(day) =>
      "Vor ${Intl.plural(day, zero: 'Heute', one: 'einem Tag', other: '${day} Tagen')}";

  static String m1(hour) =>
      "${Intl.plural(hour, one: 'Vor einer Stunde', other: 'Vor ${hour} Stunden')}";

  static String m2(min) =>
      "${Intl.plural(min, zero: 'Gerade eben', one: 'Vor einer Minute', other: 'Vor ${min} Minuten')}";

  static String m3(week) =>
      "Vor ${Intl.plural(week, zero: 'Diese Woche', one: 'einer Woche', other: '${week} Wochen')}";

  static String m4(date) => "ended am ${date}";

  static String m5(date) => "vom ${date}";

  static String m6(day) =>
      "In ${Intl.plural(day, zero: 'Heute', one: 'einem Tag', other: '${day} Tagen')}";

  static String m7(hour) =>
      "${Intl.plural(hour, one: 'In einer Stunde', other: 'In ${hour} Stunden')}";

  static String m8(min) =>
      "${Intl.plural(min, zero: 'Jetzt', one: 'In einer Minute', other: 'In ${min} Minuten')}";

  static String m9(week) =>
      "In ${Intl.plural(week, zero: 'Diese Woche', one: 'einer Woche', other: '${week} Wochen')}";

  static String m10(email) =>
      "Eine E-mail zum zurücksetzen des Passworted wurde an ${email} gesendet";

  static String m11(date) => "startet am ${date}";

  static String m12(date) => "bis ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "abort": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "accept": MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "account_name": MessageLookupByLibrary.simpleMessage("Kontoinhaber"),
        "account_number":
            MessageLookupByLibrary.simpleMessage("Kontonummer (IBAN)"),
        "achievement": MessageLookupByLibrary.simpleMessage("Erfolg"),
        "address": MessageLookupByLibrary.simpleMessage("Adresse"),
        "apply": MessageLookupByLibrary.simpleMessage("Übernehmen"),
        "april": MessageLookupByLibrary.simpleMessage("April"),
        "april_short": MessageLookupByLibrary.simpleMessage("Apr"),
        "august": MessageLookupByLibrary.simpleMessage("August"),
        "august_short": MessageLookupByLibrary.simpleMessage("Aug"),
        "bank_details": MessageLookupByLibrary.simpleMessage("Bankverbindung"),
        "bankname": MessageLookupByLibrary.simpleMessage("Bankname"),
        "before_x_days": m0,
        "before_x_hours": m1,
        "before_x_minutes": m2,
        "before_x_weeks": m3,
        "billing_info":
            MessageLookupByLibrary.simpleMessage("Rechnungsinformationen"),
        "birthday": MessageLookupByLibrary.simpleMessage("Geburtstag"),
        "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "city": MessageLookupByLibrary.simpleMessage("Stadt"),
        "close_app": MessageLookupByLibrary.simpleMessage("App schließen"),
        "country": MessageLookupByLibrary.simpleMessage("Land"),
        "create_account":
            MessageLookupByLibrary.simpleMessage("Nutzer erstellen?"),
        "december": MessageLookupByLibrary.simpleMessage("Dezember"),
        "december_short": MessageLookupByLibrary.simpleMessage("Dez"),
        "delete_changes":
            MessageLookupByLibrary.simpleMessage("Änderungen verwerfen"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "end_at_date": m4,
        "exception_invalid_input_data_received":
            MessageLookupByLibrary.simpleMessage(
                "Die übergebenen Daten sind ungültig. Bitte prüfe ob eine neue Appversion vorliegt"),
        "exception_localized_format": MessageLookupByLibrary.simpleMessage(
            "Ein Fehler ist aufgetreten, bitte prüfe ob eine Neue appversion vorliegt"),
        "exception_network_bad_certificate": MessageLookupByLibrary.simpleMessage(
            "Die Verbindung konnte nicht hergestellt werden, bitte versuche es erneut"),
        "exception_network_bad_response": MessageLookupByLibrary.simpleMessage(
            "Es ist ein Fehler aufgetreten, bitte versuche es erneut"),
        "exception_network_cancel": MessageLookupByLibrary.simpleMessage(
            "Die Verbindung wurde getrennt, bitte versuche es erneut"),
        "exception_network_connection_error": MessageLookupByLibrary.simpleMessage(
            "Die Verbindung konnte nicht hergestellt werden, bitte versuche es erneut"),
        "exception_network_connection_timeout":
            MessageLookupByLibrary.simpleMessage(
                "Ein Verbindungsfehler ist aufgetreten, bitte versuche es erneut"),
        "exception_network_receive_timeout": MessageLookupByLibrary.simpleMessage(
            "Ein Verbindungsfehler ist aufgetreten, bitte versuche es erneut"),
        "exception_network_send_timeout": MessageLookupByLibrary.simpleMessage(
            "Ein Verbindungsfehler ist aufgetreten, bitte versuche es erneut"),
        "exception_network_unknown": MessageLookupByLibrary.simpleMessage(
            "Es ist ein Netzwerkfehler aufgetreten, bitte versuche es erneut"),
        "exception_parse": MessageLookupByLibrary.simpleMessage(
            "Der Datensatz des Servers ist Fehlerhaft"),
        "exception_unknown": MessageLookupByLibrary.simpleMessage(
            "Es ist ein Fehler aufgetreten, bitte versuche es später erneut"),
        "february": MessageLookupByLibrary.simpleMessage("Februar"),
        "february_short": MessageLookupByLibrary.simpleMessage("Feb"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "first_name": MessageLookupByLibrary.simpleMessage("Vorname"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Passwort vergessen?"),
        "friday": MessageLookupByLibrary.simpleMessage("Freitag"),
        "friday_short": MessageLookupByLibrary.simpleMessage("Fr"),
        "from_date": m5,
        "gender": MessageLookupByLibrary.simpleMessage("Geschlecht"),
        "general": MessageLookupByLibrary.simpleMessage("Allgemein"),
        "imprint": MessageLookupByLibrary.simpleMessage("Impressum"),
        "in_x_days": m6,
        "in_x_hours": m7,
        "in_x_minutes": m8,
        "in_x_weeks": m9,
        "inquiry": MessageLookupByLibrary.simpleMessage("Rückfrage"),
        "january": MessageLookupByLibrary.simpleMessage("Januar"),
        "january_short": MessageLookupByLibrary.simpleMessage("Jan"),
        "july": MessageLookupByLibrary.simpleMessage("Juli"),
        "july_short": MessageLookupByLibrary.simpleMessage("Jul"),
        "june": MessageLookupByLibrary.simpleMessage("Juni"),
        "june_short": MessageLookupByLibrary.simpleMessage("Jun"),
        "last_name": MessageLookupByLibrary.simpleMessage("Nachname"),
        "last_saved":
            MessageLookupByLibrary.simpleMessage("Zuletzt gespeichert: "),
        "locked": MessageLookupByLibrary.simpleMessage("Gesperrt"),
        "loggedin": MessageLookupByLibrary.simpleMessage("Eingeloggt"),
        "login": MessageLookupByLibrary.simpleMessage("Einloggen"),
        "logout": MessageLookupByLibrary.simpleMessage("Ausloggen"),
        "march": MessageLookupByLibrary.simpleMessage("März"),
        "march_short": MessageLookupByLibrary.simpleMessage("Mär"),
        "may": MessageLookupByLibrary.simpleMessage("Mai"),
        "may_short": MessageLookupByLibrary.simpleMessage("Mai"),
        "median": MessageLookupByLibrary.simpleMessage("Durchschnitt"),
        "message_enter_registered_email": MessageLookupByLibrary.simpleMessage(
            "Geben Sie ihre registrierte E-Mail Adresse ein"),
        "message_enter_secure_password":
            MessageLookupByLibrary.simpleMessage("Sicheres Password"),
        "message_enter_valid_email_like":
            MessageLookupByLibrary.simpleMessage("name@adresse.de"),
        "message_password_email_send": m10,
        "message_password_is_empty": MessageLookupByLibrary.simpleMessage(
            "Das Passwort darf nicht leer sein"),
        "message_sending_email":
            MessageLookupByLibrary.simpleMessage("Email wird gesendet..."),
        "message_wait_for_login": MessageLookupByLibrary.simpleMessage(
            "Sie werden eingeloggt, bitte warten..."),
        "message_wait_for_logout": MessageLookupByLibrary.simpleMessage(
            "Sie werden ausgeloggt, bitte warten..."),
        "monday": MessageLookupByLibrary.simpleMessage("Montag"),
        "monday_short": MessageLookupByLibrary.simpleMessage("Mon"),
        "never": MessageLookupByLibrary.simpleMessage("Nie"),
        "no_description":
            MessageLookupByLibrary.simpleMessage("Keine Beschreibung"),
        "november": MessageLookupByLibrary.simpleMessage("November"),
        "november_short": MessageLookupByLibrary.simpleMessage("Nov"),
        "october": MessageLookupByLibrary.simpleMessage("Oktober"),
        "october_short": MessageLookupByLibrary.simpleMessage("Okt"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Passwort"),
        "phone_number_1":
            MessageLookupByLibrary.simpleMessage("Telefonnummer 1"),
        "phone_number_1_hint":
            MessageLookupByLibrary.simpleMessage("bsp. Handynummer"),
        "phone_number_2":
            MessageLookupByLibrary.simpleMessage("Telefonnummer 2"),
        "phone_number_2_hint":
            MessageLookupByLibrary.simpleMessage("bsp. Festnetznummer"),
        "privacy": MessageLookupByLibrary.simpleMessage("Datenschutz"),
        "refresh": MessageLookupByLibrary.simpleMessage("Aktualisieren"),
        "register": MessageLookupByLibrary.simpleMessage("Registrieren"),
        "request_password":
            MessageLookupByLibrary.simpleMessage("Passwort anfordern"),
        "reset": MessageLookupByLibrary.simpleMessage("Verwerfen"),
        "salutation": MessageLookupByLibrary.simpleMessage("Anrede"),
        "saturday": MessageLookupByLibrary.simpleMessage("Samstag"),
        "saturday_short": MessageLookupByLibrary.simpleMessage("Sa"),
        "save": MessageLookupByLibrary.simpleMessage("Speichern"),
        "screen_billing_info":
            MessageLookupByLibrary.simpleMessage("Rechnungsinformationen"),
        "screen_doom": MessageLookupByLibrary.simpleMessage("Dein Feed"),
        "screen_gallery": MessageLookupByLibrary.simpleMessage("Gallerie"),
        "screen_home": MessageLookupByLibrary.simpleMessage("Home"),
        "screen_imprint": MessageLookupByLibrary.simpleMessage("Impressum"),
        "screen_license": MessageLookupByLibrary.simpleMessage("Lizenzen"),
        "screen_notification":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungen"),
        "screen_personal_info":
            MessageLookupByLibrary.simpleMessage("Persönliche Informationen"),
        "screen_privacy": MessageLookupByLibrary.simpleMessage("Datenschutz"),
        "screen_profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "screen_settings":
            MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "screen_stats": MessageLookupByLibrary.simpleMessage("Statistiken"),
        "september": MessageLookupByLibrary.simpleMessage("September"),
        "september_short": MessageLookupByLibrary.simpleMessage("Sep"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "start_at_date": m11,
        "state": MessageLookupByLibrary.simpleMessage("Bundesland"),
        "street": MessageLookupByLibrary.simpleMessage("Straße"),
        "submit": MessageLookupByLibrary.simpleMessage("Einreichen"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sonntag"),
        "sunday_short": MessageLookupByLibrary.simpleMessage("So"),
        "surveys": MessageLookupByLibrary.simpleMessage("Fragebögen"),
        "swift_code": MessageLookupByLibrary.simpleMessage("BIC"),
        "thursday": MessageLookupByLibrary.simpleMessage("Donnerstag"),
        "thursday_short": MessageLookupByLibrary.simpleMessage("Do"),
        "today": MessageLookupByLibrary.simpleMessage("Heute"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("Morgen"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Dienstag"),
        "tuesday_short": MessageLookupByLibrary.simpleMessage("Di"),
        "unbounded_date":
            MessageLookupByLibrary.simpleMessage("Ohne Zeiteinschränkung"),
        "until_date": m12,
        "username": MessageLookupByLibrary.simpleMessage("Nutzername"),
        "vatno": MessageLookupByLibrary.simpleMessage("USt-ID"),
        "vatno_hint": MessageLookupByLibrary.simpleMessage(
            "Umsatzsteuer-Identifikationsnummer"),
        "warning": MessageLookupByLibrary.simpleMessage("Warnung"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Mittwoch"),
        "wednesday_short": MessageLookupByLibrary.simpleMessage("Mi"),
        "yesterday": MessageLookupByLibrary.simpleMessage("Gestern"),
        "zip": MessageLookupByLibrary.simpleMessage("Postleitzahl")
      };
}
