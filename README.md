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
  brasil_datetime: ^0.3.5
```

Em seguida, importe o pacote em seu código Dart:

```dart
import 'package:brasil_datetime/brasil_datetime.dart';
```

## Como Usar

As extensões estão disponíveis diretamente em qualquer objeto `DateTime`.

```dart
void main() {
  final agora = DateTime.now();

  // Exemplo de uso
  print('Data completa: ${agora.diaMesAno()}'); // Saída: 25/10/2023
  print('Dia por extenso: ${agora.diaSemana()}'); // Saída: quarta-feira
  print('Mês por extenso: ${agora.mesExt()}'); // Saída: outubro
}
```

## Extensões Disponíveis

Abaixo estão todas as extensões disponíveis para formatação.

### Data

| Método                | Descrição                                         | Exemplo (para `DateTime(1987, 4, 22)`) |
| --------------------- | ------------------------------------------------- | -------------------------------------- |
| `dia()`               | Dia do mês                                        | `22`                                   |
| `diaSemana()`         | Nome do dia da semana                             | `quarta-feira`                         |
| `diaSemanaAbrev()`    | Nome abreviado do dia da semana                   | `qua.`                                 |
| `mes()`               | Nome do mês                                       | `abril`                                |
| `mesAbrev()`          | Nome abreviado do mês                             | `abr.`                                 |
| `mesNoAno()`          | Número do mês no ano                              | `4`                                    |
| `diaMes()`            | Dia e mês (`dd/MM`)                               | `22/04`                                |
| `diaMesAbrev()`       | Dia e mês abreviado (`dd 'de' MMM`)               | `22 de abr.`                           |
| `diaSemanaEMes()`     | Dia da semana e mês (`EEE, dd/MM`)                | `qua., 22/04`                          |
| `diaMesExt()`         | Dia e mês por extenso (`d 'de' MMMM`)             | `22 de abril`                          |
| `diaSemanaMesExt()`   | Dia da semana e mês por extenso                   | `quarta-feira, 22 de abril`            |
| `trimestreAbrev()`    | Trimestre abreviado (`T1`, `T2`, etc.)            | `T2`                                   |
| `trimestre()`         | Trimestre por extenso                             | `2º trimestre`                         |
| `ano()`               | Ano (`yyyy`)                                      | `1987`                                 |
| `anoMes()`            | Mês e ano (`MM/yyyy`)                             | `04/1987`                              |
| `diaMesAno()`         | Data completa (`dd/MM/yyyy`)                      | `22/04/1987`                           |
| `semanaDiaMesAnoAbrev()`| Data com dia da semana abreviado                | `qua., 22/04/1987`                     |
| `mesAnoAbrev()`       | Mês abreviado e ano (`MMM 'de' yyyy`)             | `abr. de 1987`                         |
| `diaMesAnoAbrev()`    | Data com mês abreviado                            | `22 de abr. de 1987`                   |
| `semanaDiaMesAnoExtAbrev()`| Data com dia e mês abreviados                | `qua., 22 de abr. de 1987`             |
| `mesAnoExt()`         | Mês por extenso e ano (`MMMM 'de' yyyy`)          | `abril de 1987`                        |
| `diaMesAnoExt()`      | Data com mês por extenso                          | `22 de abril de 1987`                  |
| `semanaDiaMesAnoExt()`| Data completa por extenso                         | `quarta-feira, 22 de abril de 1987`    |
| `trimestreAnoAbrev()` | Trimestre abreviado e ano (`QQQ 'de' yyyy`)       | `T2 de 1987`                           |

### Hora

| Método              | Descrição                             | Exemplo (para `DateTime(..., 23, 37, 06)`) |
| ------------------- | ------------------------------------- | ------------------------------------------ |
| `hora()`            | Hora (`HH`)                           | `23`                                       |
| `horaMinuto()`      | Hora e minuto (`HH:mm`)               | `23:37`                                    |
| `horaMinutoSegundo()`| Hora, minuto e segundo (`HH:mm:ss`)  | `23:37:06`                                 |
| `minuto()`          | Minuto (`mm`)                         | `37`                                       |
| `segundo()`         | Segundo (`ss`)                        | `06`                                       |
| `minutoSegundo()`   | Minuto e segundo (`mm:ss`)            | `37:06`                                    |

### Data e Hora

| Método                 | Descrição                               | Exemplo (para `DateTime(1987, 4, 22, 23, 37)`) |
| ---------------------- | --------------------------------------- | ---------------------------------------------- |
| `diaMesAnoHoraMinuto()`| Data e hora (`dd/MM/yyyy HH:mm`)        | `22/04/1987 23:37`                             |

---

## Contribuidores

Agradecemos a todos que contribuíram para este projeto!

<a href="https://github.com/flutterbootcamp/brasil_datetime/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=flutterbootcamp/brasil_datetime" />
</a>

Feito com [contrib.rocks](https://contrib.rocks).