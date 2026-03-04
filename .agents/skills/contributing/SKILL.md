---
description: "Guidelines and rules for maintaining and contributing to the brasil_datetime package source code"
---

# Contributing to `brasil_datetime`

When asked to add a feature, fix a bug, or maintain the `brasil_datetime` package repository, you **MUST** follow the rules defined in this file.

## 1. Extension Methods Location

All DateTime extensions belong in `lib/brasil_datetime.dart`.

## 2. Critical Rule: `_garantirInicializacao()`

Every single extension method **MUST** call `_garantirInicializacao();` as its very first line. This ensures that the `intl` package's `pt_BR` locale is initialized automatically before formatting occurs.

**Example of adding a new method:**

```dart
  /// Retorna o milissegundo.
  ///
  /// Ex: `123`
  String milissegundo() {
    // CRITICAL: Always include this line first!
    _garantirInicializacao();
    return DateFormat('S', _locale).format(this);
  }
```

## 3. Documentation Requirements

Every new public method must have a doc comment (`///`). The doc comment must include:
1. A brief description of what it returns.
2. An `Ex: ` line demonstrating the expected structural output.

## 4. Test Coverage is Mandatory

For **every** extension method in `lib/brasil_datetime.dart`, there must be a corresponding test in `test/brasil_datetime_test.dart`.

When adding a test:
- Use the standard test date: `final data = DateTime(1987, 4, 22, 23, 37, 06);` unless testing specific edge cases.
- Group tests logically if creating a new category of methods.

## 5. Updates to the Example App

The `example` folder contains a standalone app that demonstrates the package.
If you add a new extension method, you must add it to the `ListView` in `example/lib/example.dart` so it is visible in the demo app. Don't forget to update `example/README.md` and the root `README.md` if the public API surface increases.

## 6. Changelog

Always update `CHANGELOG.md` when making meaningful changes (features, bug fixes, dependency updates) following the existing format. Place your changes under the `## [Unreleased]` section if a new version hasn't been defined by the user yet.
