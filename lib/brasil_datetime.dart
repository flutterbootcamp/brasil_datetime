library;

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const br = 'pt_BR';

/// Extensões para objetos [DateTime] que facilitam a formatação de data e hora
/// para o formato brasileiro (pt_BR).
///
/// Para utilizar, basta importar a biblioteca e chamar os métodos em uma instância
/// de `DateTime`.
///
/// Exemplo:
/// ```dart
/// import 'package:brasil_datetime/brasil_datetime.dart';
///
/// void main() {
///   final agora = DateTime.now();
///   print(agora.dia()); // Exibe o dia do mês.
///   print(agora.mesExt()); // Exibe o nome do mês por extenso.
/// }
/// ```
extension BrasilDateTime on DateTime {
  /// Retorna o dia do mês como uma `String`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 10, 22);
  /// print(data.dia()); // '22'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String dia() {
    initializeDateFormatting();
    return DateFormat.d(br).format(this);
  }

  /// Retorna o dia da semana abreviado.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 10, 25); // Uma quarta-feira
  /// print(data.diaSemanaAbrev()); // 'qua.'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaSemanaAbrev() {
    initializeDateFormatting();
    return DateFormat.E(br).format(this);
  }

  /// Retorna o nome completo do dia da semana.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 10, 25); // Uma quarta-feira
  /// print(data.diaSemana()); // 'quarta-feira'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaSemana() {
    initializeDateFormatting();
    return DateFormat.EEEE(br).format(this);
  }

  /// Retorna o nome do mês abreviado.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22);
  /// print(data.mesAbrev()); // 'abr.'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String mesAbrev() {
    initializeDateFormatting();
    return DateFormat.LLL(br).format(this);
  }

  /// Retorna o nome completo do mês.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22);
  /// print(data.mes()); // 'abril'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String mes() {
    initializeDateFormatting();
    return DateFormat.LLLL(br).format(this);
  }

  /// Retorna o número do mês no ano (de `1` a `12`).
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22);
  /// print(data.mesNoAno()); // '4'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String mesNoAno() {
    initializeDateFormatting();
    return DateFormat.M(br).format(this);
  }

  /// Retorna o dia e o mês no formato `dd/MM`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22);
  /// print(data.diaMes()); // '22/04'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaMes() {
    initializeDateFormatting();
    return DateFormat.Md(br).format(this);
  }

  /// Retorna o dia da semana abreviado e o mês no formato `[semana], dd/MM`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22); // Um sábado
  /// print(data.diaSemanaEMes()); // 'sáb., 22/04'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaSemanaEMes() {
    initializeDateFormatting();
    return DateFormat.MEd(br).format(this);
  }

  /// Retorna o dia e o mês abreviado no formato `dd 'de' MMM`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22);
  /// print(data.diaMesAbrev()); // '22 de abr.'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaMesAbrev() {
    initializeDateFormatting();
    return DateFormat.MMMd(br).format(this);
  }

  /// Retorna o dia da semana abreviado, o dia do mês e o mês abreviado.
  ///
  /// Formato: `EEE, dd 'de' MMM`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22); // Um sábado
  /// print(data.diaSemanaMesAbrev()); // 'sáb., 22 de abr.'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaSemanaMesAbrev() {
    initializeDateFormatting();
    return DateFormat.MMMEd(br).format(this);
  }

  /// Retorna o dia e o mês por extenso no formato `d 'de' MMMM`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22);
  /// print(data.diaMesExt()); // '22 de abril'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaMesExt() {
    initializeDateFormatting();
    return DateFormat.MMMMd(br).format(this);
  }

  /// Retorna o dia da semana e o mês por extenso.
  ///
  /// Formato: `EEEE, d 'de' MMMM`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22); // Um sábado
  /// print(data.diaSemanaMesExt()); // 'sábado, 22 de abril'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaSemanaMesExt() {
    initializeDateFormatting();
    return DateFormat.MMMMEEEEd(br).format(this);
  }

  /// Retorna o trimestre do ano de forma abreviada (`T1`, `T2`, `T3`, `T4`).
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22); // Mês 4, segundo trimestre
  /// print(data.trimestreAbrev()); // 'T2'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String trimestreAbrev() {
    initializeDateFormatting();
    return DateFormat.QQQ(br).format(this);
  }

  /// Retorna o trimestre do ano por extenso.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 4, 22); // Mês 4, segundo trimestre
  /// print(data.trimestre()); // '2º trimestre'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String trimestre() {
    initializeDateFormatting();
    return DateFormat.QQQQ(br).format(this);
  }

  /// Retorna o ano no formato `yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22);
  /// print(data.ano()); // '1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String ano() {
    initializeDateFormatting();
    return DateFormat.y(br).format(this);
  }

  /// Retorna o mês e o ano no formato `MM/yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22);
  /// print(data.anoMes()); // '04/1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String anoMes() {
    initializeDateFormatting();
    return DateFormat.yM(br).format(this);
  }

  /// Retorna a data completa no formato `dd/MM/yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22);
  /// print(data.diaMesAno()); // '22/04/1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaMesAno() {
    initializeDateFormatting();
    return DateFormat.yMd(br).format(this);
  }

  /// Retorna a data com o dia da semana abreviado.
  ///
  /// Formato: `EEE, dd/MM/yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22); // Uma quarta-feira
  /// print(data.semanaDiaMesAnoAbrev()); // 'qua., 22/04/1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String semanaDiaMesAnoAbrev() {
    initializeDateFormatting();
    return DateFormat.yMEd(br).format(this);
  }

  /// Retorna o mês abreviado e o ano.
  ///
  /// Formato: `MMM 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22);
  /// print(data.mesAnoAbrev()); // 'abr. de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String mesAnoAbrev() {
    initializeDateFormatting();
    return DateFormat.yMMM(br).format(this);
  }

  /// Retorna a data com o mês abreviado.
  ///
  /// Formato: `dd 'de' MMM 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22);
  /// print(data.diaMesAnoAbrev()); // '22 de abr. de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaMesAnoAbrev() {
    initializeDateFormatting();
    return DateFormat.yMMMd(br).format(this);
  }

  /// Retorna a data completa com o dia da semana e o mês abreviados.
  ///
  /// Formato: `EEE, dd 'de' MMM 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22); // Uma quarta-feira
  /// print(data.semanaDiaMesAnoExtAbrev()); // 'qua., 22 de abr. de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String semanaDiaMesAnoExtAbrev() {
    initializeDateFormatting();
    return DateFormat.yMMMEd(br).format(this);
  }

  /// Retorna o mês por extenso e o ano.
  ///
  /// Formato: `MMMM 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22);
  /// print(data.mesAnoExt()); // 'abril de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String mesAnoExt() {
    initializeDateFormatting();
    return DateFormat.yMMMM(br).format(this);
  }

  /// Retorna a data com o mês por extenso.
  ///
  /// Formato: `d 'de' MMMM 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22);
  /// print(data.diaMesAnoExt()); // '22 de abril de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaMesAnoExt() {
    initializeDateFormatting();
    return DateFormat.yMMMMd(br).format(this);
  }

  /// Retorna a data completa por extenso.
  ///
  /// Formato: `EEEE, d 'de' MMMM 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22); // Uma quarta-feira
  /// print(data.semanaDiaMesAnoExt()); // 'quarta-feira, 22 de abril de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String semanaDiaMesAnoExt() {
    initializeDateFormatting();
    return DateFormat.yMMMMEEEEd(br).format(this);
  }

  /// Retorna o trimestre abreviado e o ano.
  ///
  /// Formato: `QQQ 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22); // Segundo trimestre
  /// print(data.trimestreAnoAbrev()); // 'T2 de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String trimestreAnoAbrev() {
    initializeDateFormatting();
    return DateFormat.yQQQ(br).format(this);
  }

  /// Retorna o trimestre por extenso e o ano.
  ///
  /// Formato: `QQQQ 'de' yyyy`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22); // Segundo trimestre
  /// print(data.trimestreAnoExt()); // '2º trimestre de 1987'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String trimestreAnoExt() {
    initializeDateFormatting();
    return DateFormat.yQQQQ(br).format(this);
  }

  /// Retorna a hora no formato 24h (`HH`).
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 1, 1, 23, 37);
  /// print(data.hora()); // '23'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String hora() {
    initializeDateFormatting();
    return DateFormat.H(br).format(this);
  }

  /// Retorna a hora e os minutos no formato 24h (`HH:mm`).
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 1, 1, 23, 37);
  /// print(data.horaMinuto()); // '23:37'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String horaMinuto() {
    initializeDateFormatting();
    return DateFormat.Hm(br).format(this);
  }

  /// Retorna a hora, os minutos e os segundos no formato 24h (`HH:mm:ss`).
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 1, 1, 23, 37, 06);
  /// print(data.horaMinutoSegundo()); // '23:37:06'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String horaMinutoSegundo() {
    initializeDateFormatting();
    return DateFormat.Hms(br).format(this);
  }

  /// Retorna os minutos da hora.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 1, 1, 23, 37);
  /// print(data.minuto()); // '37'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String minuto() {
    initializeDateFormatting();
    return DateFormat.m(br).format(this);
  }

  /// Retorna os segundos do minuto.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 1, 1, 23, 37, 06);
  /// print(data.segundo()); // '6'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String segundo() {
    initializeDateFormatting();
    return DateFormat.s(br).format(this);
  }

  /// Retorna os minutos e os segundos.
  ///
  /// Formato: `mm:ss`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(2023, 1, 1, 23, 37, 06);
  /// print(data.minutoSegundo()); // '37:06'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String minutoSegundo() {
    initializeDateFormatting();
    return DateFormat.ms(br).format(this);
  }

  /// Retorna a data e a hora completas.
  ///
  /// Formato: `dd/MM/yyyy HH:mm`.
  ///
  /// Exemplo:
  /// ```dart
  /// final data = DateTime(1987, 4, 22, 23, 37);
  /// print(data.diaMesAnoHoraMinuto()); // '22/04/1987 23:37'
  /// ```
  ///
  /// O valor retornado é uma `String`.
  String diaMesAnoHoraMinuto() {
    initializeDateFormatting();
    return DateFormat.yMd(br).add_Hm().format(this);
  }
}