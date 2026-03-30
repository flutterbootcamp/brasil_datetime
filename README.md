# brasil_datetime 🇧🇷

Extensões para a classe `DateTime` que facilitam a formatação de data e hora para o padrão brasileiro (pt_BR).

[![Dart](https://github.com/flutterbootcamp/brasil_datetime/actions/workflows/dart.yml/badge.svg)](https://github.com/flutterbootcamp/brasil_datetime/actions/workflows/dart.yml)
[![Codecov](https://img.shields.io/codecov/c/github/flutterbootcamp/brasil_datetime)](https://codecov.io/gh/flutterbootcamp/brasil_datetime)

## Visão Geral

Este pacote oferece um conjunto de extensões para a classe `DateTime` do Dart, permitindo a formatação de datas e horas de maneira simples e intuitiva, seguindo as convenções brasileiras.

## Instalação

Adicione `brasil_datetime` ao seu arquivo `pubspec.yaml`:

```yaml
dependencies:
  brasil_datetime: ^0.4.0
```

Em seguida, importe o pacote em seu código Dart:

```dart
import 'package:brasil_datetime/brasil_datetime.dart';
```

## Como Usar

As extensões estão disponíveis diretamente em qualquer objeto `DateTime`.

```dart
// objeto de exemplo
final data = DateTime(1987, 4, 22, 23, 37, 06);

data.dia();                      // 22
data.diaSemana();                // quarta-feira
data.diaSemanaAbrev();           // qua.
data.mes();                      // abril
data.mesAbrev();                 // abr.
data.mesNoAno();                 // 4
data.diaMes();                   // 22/04
data.diaSemanaEMes();            // qua., 22/04
data.diaMesAbrev();              // 22 de abr.
data.diaSemanaMesAbrev();        // qua., 22 de abr.
data.diaMesExt();                // 22 de abril
data.diaSemanaMesExt();          // quarta-feira, 22 de abril
data.trimestreAbrev();           // T2
data.trimestre();                // 2º trimestre
data.ano();                      // 1987
data.anoMes();                   // 04/1987
data.diaMesAno();                // 22/04/1987
data.diaMesAnoHoraMinuto();      // 22/04/1987 23:37
data.semanaDiaMesAnoAbrev();     // qua., 22/04/1987
data.mesAnoAbrev();              // abr. de 1987
data.diaMesAnoAbrev();           // 22 de abr. de 1987
data.semanaDiaMesAnoExtAbrev();  // qua., 22 de abr. de 1987
data.mesAnoExt();                // abril de 1987
data.diaMesAnoExt();             // 22 de abril de 1987
data.semanaDiaMesAnoExt();       // quarta-feira, 22 de abril de 1987
data.trimestreAnoAbrev();        // T2 de 1987
data.trimestreAnoExt();          // 2º trimestre de 1987
data.hora();                     // 23
data.horaMinuto();               // 23:37
data.horaMinutoSegundo();        // 23:37:06
data.minuto();                   // 37
data.segundo();                  // 6
data.minutoSegundo();            // 37:06
```

## Contribuidores

Agradecemos a todos que contribuíram para este projeto!

<a href="https://github.com/flutterbootcamp/brasil_datetime/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=flutterbootcamp/brasil_datetime" />
</a>

Feito com [contrib.rocks](https://contrib.rocks).