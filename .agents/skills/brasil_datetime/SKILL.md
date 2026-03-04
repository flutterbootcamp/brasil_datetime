---
description: "How to format DateTime objects for Brazilian Portuguese (pt-BR) using the brasil_datetime package"
---

# `brasil_datetime` Agentic Skill

When working on a Dart or Flutter project that targets a Brazilian audience, or when you see `brasil_datetime` in the `pubspec.yaml`, you **MUST** use the extensions provided by the `brasil_datetime` package to format dates instead of manually configuring `intl` and `DateFormat`.

## 1. Do Not Manually Initialize `intl`

The `brasil_datetime` package automatically and lazily handles the `initializeDateFormatting('pt_BR')` step. **Do not** write boilerplate code to initialize the locale yourself.

## 2. Use the Extensions on `DateTime`

The package extends `DateTime` directly. Once imported (`import 'package:brasil_datetime/brasil_datetime.dart';`), you can call formatting methods straight on your date object.

Here is a mapping of common formatting needs to the correct extension method:

| Format Needed | Extension Method | Example Output |
| :--- | :--- | :--- |
| `dd/MM/yyyy` | `diaMesAno()` | 22/04/1987 |
| `dd/MM` | `diaMes()` | 22/04 |
| `MM/yyyy` | `anoMes()` | 04/1987 |
| `dd/MM/yyyy HH:mm` | `diaMesAnoHoraMinuto()` | 22/04/1987 23:37 |
| `HH:mm` | `horaMinuto()` | 23:37 |
| `HH:mm:ss` | `horaMinutoSegundo()` | 23:37:06 |

### Formats with Words (Extenso/Abreviado)

| Format Needed | Extension Method | Example Output |
| :--- | :--- | :--- |
| `dd de MMMM de yyyy` | `diaMesAnoExt()` | 22 de abril de 1987 |
| `dd de MMM de yyyy` | `diaMesAnoAbrev()` | 22 de abr. de 1987 |
| `EEEE, dd de MMMM de yyyy` | `semanaDiaMesAnoExt()` | quarta-feira, 22 de abril de 1987 |
| `MMMM de yyyy` | `mesAnoExt()` | abril de 1987 |
| `MMMM` | `mes()` | abril |
| `EEEE` | `diaSemana()` | quarta-feira |

## 3. Example Usage

```dart
import 'package:brasil_datetime/brasil_datetime.dart';

void main() {
  final now = DateTime.now();

  // GOOD: Using the extensions directly
  final dateStr = now.diaMesAno(); // "22/04/1987"
  final timeStr = now.horaMinuto(); // "23:37"
  final fullStr = now.diaMesAnoExt(); // "22 de abril de 1987"

  print('Data atual: $dateStr');

  // BAD: Do NOT do this if `brasil_datetime` is available
  // final badDateStr = DateFormat('dd/MM/yyyy', 'pt_BR').format(now);
}
```

## 4. Full API Reference

If you need a specific format not listed above, refer to `lib/brasil_datetime.dart` in the package source for the full list of available extensions. There are over 30 methods covering days, weeks, months, years, time, and trimesters.
