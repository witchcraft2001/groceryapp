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

  /// `Main`
  String get main {
    return Intl.message(
      'Main',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Catalog`
  String get catalog {
    return Intl.message(
      'Catalog',
      name: 'catalog',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Cart items:`
  String get cartItems {
    return Intl.message(
      'Cart items:',
      name: 'cartItems',
      desc: '',
      args: [],
    );
  }

  /// `Order price`
  String get orderPrice {
    return Intl.message(
      'Order price',
      name: 'orderPrice',
      desc: '',
      args: [],
    );
  }

  /// `Total price:`
  String get totalPrice {
    return Intl.message(
      'Total price:',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Minimal order price:`
  String get minOrderPrice {
    return Intl.message(
      'Minimal order price:',
      name: 'minOrderPrice',
      desc: '',
      args: [],
    );
  }

  /// `Amount:`
  String get amount {
    return Intl.message(
      'Amount:',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Amount with discount:`
  String get amountWithDiscount {
    return Intl.message(
      'Amount with discount:',
      name: 'amountWithDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Delivery:`
  String get delivery {
    return Intl.message(
      'Delivery:',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Discount:`
  String get discount {
    return Intl.message(
      'Discount:',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Recommendations:`
  String get recommendations {
    return Intl.message(
      'Recommendations:',
      name: 'recommendations',
      desc: '',
      args: [],
    );
  }

  /// `{price} before free delivery`
  String beforeFreeDelivery(Object price) {
    return Intl.message(
      '$price before free delivery',
      name: 'beforeFreeDelivery',
      desc: '',
      args: [price],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
