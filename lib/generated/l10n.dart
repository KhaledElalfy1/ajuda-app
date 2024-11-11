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

  /// `Donation made Easy`
  String get onboardingTitle {
    return Intl.message(
      'Donation made Easy',
      name: 'onboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ajuda is a platform for philanthropists to make donations to various social programmes and charities around the world.`
  String get onboardingDescription {
    return Intl.message(
      'Ajuda is a platform for philanthropists to make donations to various social programmes and charities around the world.',
      name: 'onboardingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Start Donating`
  String get startDonating {
    return Intl.message(
      'Start Donating',
      name: 'startDonating',
      desc: '',
      args: [],
    );
  }

  /// `////////////////////////////////////////////////`
  String get signInView {
    return Intl.message(
      '////////////////////////////////////////////////',
      name: 'signInView',
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

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `By signing in you accept the`
  String get bySiningInYouAccept {
    return Intl.message(
      'By signing in you accept the',
      name: 'bySiningInYouAccept',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get termsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `////////////////////////////////////////////////`
  String get signUpView {
    return Intl.message(
      '////////////////////////////////////////////////',
      name: 'signUpView',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the`
  String get iAgreeTo {
    return Intl.message(
      'I agree to the',
      name: 'iAgreeTo',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `You must agree with terms of services and privacy policy`
  String get youMastAgree {
    return Intl.message(
      'You must agree with terms of services and privacy policy',
      name: 'youMastAgree',
      desc: '',
      args: [],
    );
  }

  /// `////////////////////////////////////////////////`
  String get homeView {
    return Intl.message(
      '////////////////////////////////////////////////',
      name: 'homeView',
      desc: '',
      args: [],
    );
  }

  /// `Help Others....`
  String get helpOthers {
    return Intl.message(
      'Help Others....',
      name: 'helpOthers',
      desc: '',
      args: [],
    );
  }

  /// `Spotlight`
  String get spotlight {
    return Intl.message(
      'Spotlight',
      name: 'spotlight',
      desc: '',
      args: [],
    );
  }

  /// `Donation Balance`
  String get donationBalance {
    return Intl.message(
      'Donation Balance',
      name: 'donationBalance',
      desc: '',
      args: [],
    );
  }

  /// `Last Compagin`
  String get lastCompagin {
    return Intl.message(
      'Last Compagin',
      name: 'lastCompagin',
      desc: '',
      args: [],
    );
  }

  /// `Donation Location`
  String get donationLocation {
    return Intl.message(
      'Donation Location',
      name: 'donationLocation',
      desc: '',
      args: [],
    );
  }

  /// `////////////////////////////////////////////////`
  String get favoriteView {
    return Intl.message(
      '////////////////////////////////////////////////',
      name: 'favoriteView',
      desc: '',
      args: [],
    );
  }

  /// `Donations`
  String get donations {
    return Intl.message(
      'Donations',
      name: 'donations',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Latest Fundraisers`
  String get latestFundraisers {
    return Intl.message(
      'Latest Fundraisers',
      name: 'latestFundraisers',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
