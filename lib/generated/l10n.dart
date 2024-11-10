// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Locked`
  String get locked {
    return Intl.message(
      'Locked',
      name: 'locked',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Abort`
  String get abort {
    return Intl.message(
      'Abort',
      name: 'abort',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get privacy {
    return Intl.message(
      'Privacy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Imprint`
  String get imprint {
    return Intl.message(
      'Imprint',
      name: 'imprint',
      desc: '',
      args: [],
    );
  }

  /// `Surveys`
  String get surveys {
    return Intl.message(
      'Surveys',
      name: 'surveys',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Begin Check`
  String get begin_check {
    return Intl.message(
      'Begin Check',
      name: 'begin_check',
      desc: '',
      args: [],
    );
  }

  /// `Abort and return Check`
  String get abort_and_return_check {
    return Intl.message(
      'Abort and return Check',
      name: 'abort_and_return_check',
      desc: '',
      args: [],
    );
  }

  /// `Delete changes`
  String get delete_changes {
    return Intl.message(
      'Delete changes',
      name: 'delete_changes',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Request Password`
  String get request_password {
    return Intl.message(
      'Request Password',
      name: 'request_password',
      desc: '',
      args: [],
    );
  }

  /// `Create User?`
  String get create_account {
    return Intl.message(
      'Create User?',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Close App`
  String get close_app {
    return Intl.message(
      'Close App',
      name: 'close_app',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Logged In`
  String get loggedin {
    return Intl.message(
      'Logged In',
      name: 'loggedin',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Salutation`
  String get salutation {
    return Intl.message(
      'Salutation',
      name: 'salutation',
      desc: '',
      args: [],
    );
  }

  /// `Firstname`
  String get first_name {
    return Intl.message(
      'Firstname',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Lastname`
  String get last_name {
    return Intl.message(
      'Lastname',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Phone 1`
  String get phone_number_1 {
    return Intl.message(
      'Phone 1',
      name: 'phone_number_1',
      desc: '',
      args: [],
    );
  }

  /// `e.g. Smartphone number`
  String get phone_number_1_hint {
    return Intl.message(
      'e.g. Smartphone number',
      name: 'phone_number_1_hint',
      desc: '',
      args: [],
    );
  }

  /// `Phone 2`
  String get phone_number_2 {
    return Intl.message(
      'Phone 2',
      name: 'phone_number_2',
      desc: '',
      args: [],
    );
  }

  /// `e.g. Landline number`
  String get phone_number_2_hint {
    return Intl.message(
      'e.g. Landline number',
      name: 'phone_number_2_hint',
      desc: '',
      args: [],
    );
  }

  /// `VAT number`
  String get vatno {
    return Intl.message(
      'VAT number',
      name: 'vatno',
      desc: '',
      args: [],
    );
  }

  /// `Valued Added Tax`
  String get vatno_hint {
    return Intl.message(
      'Valued Added Tax',
      name: 'vatno_hint',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Inquiry`
  String get inquiry {
    return Intl.message(
      'Inquiry',
      name: 'inquiry',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Billing Information`
  String get billing_info {
    return Intl.message(
      'Billing Information',
      name: 'billing_info',
      desc: '',
      args: [],
    );
  }

  /// `Bank details`
  String get bank_details {
    return Intl.message(
      'Bank details',
      name: 'bank_details',
      desc: '',
      args: [],
    );
  }

  /// `Achievement`
  String get achievement {
    return Intl.message(
      'Achievement',
      name: 'achievement',
      desc: '',
      args: [],
    );
  }

  /// `Average`
  String get median {
    return Intl.message(
      'Average',
      name: 'median',
      desc: '',
      args: [],
    );
  }

  /// `no description`
  String get no_description {
    return Intl.message(
      'no description',
      name: 'no_description',
      desc: '',
      args: [],
    );
  }

  /// `Bank name`
  String get bankname {
    return Intl.message(
      'Bank name',
      name: 'bankname',
      desc: '',
      args: [],
    );
  }

  /// `Account number`
  String get account_number {
    return Intl.message(
      'Account number',
      name: 'account_number',
      desc: '',
      args: [],
    );
  }

  /// `Swift code`
  String get swift_code {
    return Intl.message(
      'Swift code',
      name: 'swift_code',
      desc: '',
      args: [],
    );
  }

  /// `Account name`
  String get account_name {
    return Intl.message(
      'Account name',
      name: 'account_name',
      desc: '',
      args: [],
    );
  }

  /// `Last saved: `
  String get last_saved {
    return Intl.message(
      'Last saved: ',
      name: 'last_saved',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Zip Code`
  String get zip {
    return Intl.message(
      'Zip Code',
      name: 'zip',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get marker_label {
    return Intl.message(
      'Check',
      name: 'marker_label',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message(
      'Tomorrow',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Without time restriction`
  String get unbounded_date {
    return Intl.message(
      'Without time restriction',
      name: 'unbounded_date',
      desc: '',
      args: [],
    );
  }

  /// `von {date}`
  String from_date(String date) {
    return Intl.message(
      'von $date',
      name: 'from_date',
      desc: '',
      args: [date],
    );
  }

  /// `bis {date}`
  String until_date(String date) {
    return Intl.message(
      'bis $date',
      name: 'until_date',
      desc: '',
      args: [date],
    );
  }

  /// `startet am {date}`
  String start_at_date(String date) {
    return Intl.message(
      'startet am $date',
      name: 'start_at_date',
      desc: '',
      args: [date],
    );
  }

  /// `ended am {date}`
  String end_at_date(String date) {
    return Intl.message(
      'ended am $date',
      name: 'end_at_date',
      desc: '',
      args: [date],
    );
  }

  /// `Before {week, plural,=0{This week} =1{1 week} other{{week} weeks}}`
  String before_x_weeks(int week) {
    return Intl.message(
      'Before ${Intl.plural(week, zero: 'This week', one: '1 week', other: '$week weeks')}',
      name: 'before_x_weeks',
      desc: '',
      args: [week],
    );
  }

  /// `In {week, plural,=0{This week} =1{1 week} other{{week} weeks}}`
  String in_x_weeks(int week) {
    return Intl.message(
      'In ${Intl.plural(week, zero: 'This week', one: '1 week', other: '$week weeks')}',
      name: 'in_x_weeks',
      desc: '',
      args: [week],
    );
  }

  /// `Before {day, plural,=0{Today} =1{1 day} other{{day} days}}`
  String before_x_days(int day) {
    return Intl.message(
      'Before ${Intl.plural(day, zero: 'Today', one: '1 day', other: '$day days')}',
      name: 'before_x_days',
      desc: '',
      args: [day],
    );
  }

  /// `In {day, plural,=0{Today} =1{1 day} other{{day} days}}`
  String in_x_days(int day) {
    return Intl.message(
      'In ${Intl.plural(day, zero: 'Today', one: '1 day', other: '$day days')}',
      name: 'in_x_days',
      desc: '',
      args: [day],
    );
  }

  /// `Before {hour, plural, =1{1 hour} other{{hour} hours}}`
  String before_x_hours(int hour) {
    return Intl.message(
      'Before ${Intl.plural(hour, one: '1 hour', other: '$hour hours')}',
      name: 'before_x_hours',
      desc: '',
      args: [hour],
    );
  }

  /// `In {hour, plural, =1{1 hour} other{{hour} hours}}`
  String in_x_hours(int hour) {
    return Intl.message(
      'In ${Intl.plural(hour, one: '1 hour', other: '$hour hours')}',
      name: 'in_x_hours',
      desc: '',
      args: [hour],
    );
  }

  /// `{min, plural, =0{Just now} =1{einer Minute} other{{min} Minuten}}`
  String before_x_minutes(int min) {
    return Intl.plural(
      min,
      zero: 'Just now',
      one: 'einer Minute',
      other: '$min Minuten',
      name: 'before_x_minutes',
      desc: '',
      args: [min],
    );
  }

  /// `{min, plural,=0{Now} =1{In a minute} other{in {min} minutes}}`
  String in_x_minutes(int min) {
    return Intl.plural(
      min,
      zero: 'Now',
      one: 'In a minute',
      other: 'in $min minutes',
      name: 'in_x_minutes',
      desc: '',
      args: [min],
    );
  }

  /// `Never`
  String get never {
    return Intl.message(
      'Never',
      name: 'never',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get screen_home {
    return Intl.message(
      'Home',
      name: 'screen_home',
      desc: '',
      args: [],
    );
  }

  /// `Your Feed`
  String get screen_doom {
    return Intl.message(
      'Your Feed',
      name: 'screen_doom',
      desc: '',
      args: [],
    );
  }

  /// `Imprint`
  String get screen_imprint {
    return Intl.message(
      'Imprint',
      name: 'screen_imprint',
      desc: '',
      args: [],
    );
  }

  /// `License`
  String get screen_license {
    return Intl.message(
      'License',
      name: 'screen_license',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get screen_privacy {
    return Intl.message(
      'Privacy',
      name: 'screen_privacy',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get screen_settings {
    return Intl.message(
      'Settings',
      name: 'screen_settings',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get screen_profile {
    return Intl.message(
      'Profile',
      name: 'screen_profile',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get screen_gallery {
    return Intl.message(
      'Gallery',
      name: 'screen_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get screen_personal_info {
    return Intl.message(
      'Personal Info',
      name: 'screen_personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Billing Information`
  String get screen_billing_info {
    return Intl.message(
      'Billing Information',
      name: 'screen_billing_info',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get screen_notification {
    return Intl.message(
      'Notifications',
      name: 'screen_notification',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get screen_check_info {
    return Intl.message(
      'Information',
      name: 'screen_check_info',
      desc: '',
      args: [],
    );
  }

  /// `Check Overview`
  String get screen_check_overview {
    return Intl.message(
      'Check Overview',
      name: 'screen_check_overview',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get screen_stats {
    return Intl.message(
      'Statistics',
      name: 'screen_stats',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get monday {
    return Intl.message(
      'Monday',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message(
      'Tuesday',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message(
      'Wednesday',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get thursday {
    return Intl.message(
      'Thursday',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Friday`
  String get friday {
    return Intl.message(
      'Friday',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Saturday`
  String get saturday {
    return Intl.message(
      'Saturday',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get sunday {
    return Intl.message(
      'Sunday',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Mon`
  String get monday_short {
    return Intl.message(
      'Mon',
      name: 'monday_short',
      desc: '',
      args: [],
    );
  }

  /// `Tue`
  String get tuesday_short {
    return Intl.message(
      'Tue',
      name: 'tuesday_short',
      desc: '',
      args: [],
    );
  }

  /// `Wed`
  String get wednesday_short {
    return Intl.message(
      'Wed',
      name: 'wednesday_short',
      desc: '',
      args: [],
    );
  }

  /// `Thu`
  String get thursday_short {
    return Intl.message(
      'Thu',
      name: 'thursday_short',
      desc: '',
      args: [],
    );
  }

  /// `Fri`
  String get friday_short {
    return Intl.message(
      'Fri',
      name: 'friday_short',
      desc: '',
      args: [],
    );
  }

  /// `Sa`
  String get saturday_short {
    return Intl.message(
      'Sa',
      name: 'saturday_short',
      desc: '',
      args: [],
    );
  }

  /// `Sun`
  String get sunday_short {
    return Intl.message(
      'Sun',
      name: 'sunday_short',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get january {
    return Intl.message(
      'January',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get february {
    return Intl.message(
      'February',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get march {
    return Intl.message(
      'March',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get april {
    return Intl.message(
      'April',
      name: 'april',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may {
    return Intl.message(
      'May',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get june {
    return Intl.message(
      'June',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get july {
    return Intl.message(
      'July',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get august {
    return Intl.message(
      'August',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get september {
    return Intl.message(
      'September',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get october {
    return Intl.message(
      'October',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get november {
    return Intl.message(
      'November',
      name: 'november',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get december {
    return Intl.message(
      'December',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `Jan`
  String get january_short {
    return Intl.message(
      'Jan',
      name: 'january_short',
      desc: '',
      args: [],
    );
  }

  /// `Feb`
  String get february_short {
    return Intl.message(
      'Feb',
      name: 'february_short',
      desc: '',
      args: [],
    );
  }

  /// `Mar`
  String get march_short {
    return Intl.message(
      'Mar',
      name: 'march_short',
      desc: '',
      args: [],
    );
  }

  /// `Apr`
  String get april_short {
    return Intl.message(
      'Apr',
      name: 'april_short',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may_short {
    return Intl.message(
      'May',
      name: 'may_short',
      desc: '',
      args: [],
    );
  }

  /// `Jun`
  String get june_short {
    return Intl.message(
      'Jun',
      name: 'june_short',
      desc: '',
      args: [],
    );
  }

  /// `Jul`
  String get july_short {
    return Intl.message(
      'Jul',
      name: 'july_short',
      desc: '',
      args: [],
    );
  }

  /// `Aug`
  String get august_short {
    return Intl.message(
      'Aug',
      name: 'august_short',
      desc: '',
      args: [],
    );
  }

  /// `Sep`
  String get september_short {
    return Intl.message(
      'Sep',
      name: 'september_short',
      desc: '',
      args: [],
    );
  }

  /// `Oct`
  String get october_short {
    return Intl.message(
      'Oct',
      name: 'october_short',
      desc: '',
      args: [],
    );
  }

  /// `Nov`
  String get november_short {
    return Intl.message(
      'Nov',
      name: 'november_short',
      desc: '',
      args: [],
    );
  }

  /// `Dec`
  String get december_short {
    return Intl.message(
      'Dec',
      name: 'december_short',
      desc: '',
      args: [],
    );
  }

  /// `name@adresse.com`
  String get message_enter_valid_email_like {
    return Intl.message(
      'name@adresse.com',
      name: 'message_enter_valid_email_like',
      desc: '',
      args: [],
    );
  }

  /// `The password cannot be empty`
  String get message_password_is_empty {
    return Intl.message(
      'The password cannot be empty',
      name: 'message_password_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Secure password`
  String get message_enter_secure_password {
    return Intl.message(
      'Secure password',
      name: 'message_enter_secure_password',
      desc: '',
      args: [],
    );
  }

  /// `Logging in, please wait...`
  String get message_wait_for_login {
    return Intl.message(
      'Logging in, please wait...',
      name: 'message_wait_for_login',
      desc: '',
      args: [],
    );
  }

  /// `Sending email...`
  String get message_sending_email {
    return Intl.message(
      'Sending email...',
      name: 'message_sending_email',
      desc: '',
      args: [],
    );
  }

  /// `Logging out, please wait...`
  String get message_wait_for_logout {
    return Intl.message(
      'Logging out, please wait...',
      name: 'message_wait_for_logout',
      desc: '',
      args: [],
    );
  }

  /// `Enter your registered email`
  String get message_enter_registered_email {
    return Intl.message(
      'Enter your registered email',
      name: 'message_enter_registered_email',
      desc: '',
      args: [],
    );
  }

  /// `Password reset mail send to {email}`
  String message_password_email_send(String email) {
    return Intl.message(
      'Password reset mail send to $email',
      name: 'message_password_email_send',
      desc: '',
      args: [email],
    );
  }

  /// `An error occurred, please try again later`
  String get exception_unknown {
    return Intl.message(
      'An error occurred, please try again later',
      name: 'exception_unknown',
      desc: '',
      args: [],
    );
  }

  /// `The received data is malformed`
  String get exception_parse {
    return Intl.message(
      'The received data is malformed',
      name: 'exception_parse',
      desc: '',
      args: [],
    );
  }

  /// `The data received is invalid. Please check for an new app version`
  String get exception_invalid_input_data_received {
    return Intl.message(
      'The data received is invalid. Please check for an new app version',
      name: 'exception_invalid_input_data_received',
      desc: '',
      args: [],
    );
  }

  /// `A connection error occurred, please try again`
  String get exception_network_connection_timeout {
    return Intl.message(
      'A connection error occurred, please try again',
      name: 'exception_network_connection_timeout',
      desc: '',
      args: [],
    );
  }

  /// `A connection error occurred, please try again`
  String get exception_network_send_timeout {
    return Intl.message(
      'A connection error occurred, please try again',
      name: 'exception_network_send_timeout',
      desc: '',
      args: [],
    );
  }

  /// `A connection error occurred, please try again`
  String get exception_network_receive_timeout {
    return Intl.message(
      'A connection error occurred, please try again',
      name: 'exception_network_receive_timeout',
      desc: '',
      args: [],
    );
  }

  /// `The connection could not be established, please try again`
  String get exception_network_bad_certificate {
    return Intl.message(
      'The connection could not be established, please try again',
      name: 'exception_network_bad_certificate',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please try again`
  String get exception_network_bad_response {
    return Intl.message(
      'An error occurred, please try again',
      name: 'exception_network_bad_response',
      desc: '',
      args: [],
    );
  }

  /// `The connection was cancelled, please try again`
  String get exception_network_cancel {
    return Intl.message(
      'The connection was cancelled, please try again',
      name: 'exception_network_cancel',
      desc: '',
      args: [],
    );
  }

  /// `The connection could not be established, please try again`
  String get exception_network_connection_error {
    return Intl.message(
      'The connection could not be established, please try again',
      name: 'exception_network_connection_error',
      desc: '',
      args: [],
    );
  }

  /// `A network error occurred, please try again`
  String get exception_network_unknown {
    return Intl.message(
      'A network error occurred, please try again',
      name: 'exception_network_unknown',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please check for a new app version`
  String get exception_localized_format {
    return Intl.message(
      'An error occurred, please check for a new app version',
      name: 'exception_localized_format',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
