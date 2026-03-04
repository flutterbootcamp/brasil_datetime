/// Extensões para a classe DateTime para facilitar a formatação em pt_BR.
library;

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const _locale = 'pt_BR';

bool _initialized = false;

/// Inicializa a formatação de datas para pt_BR.
///
/// Esta função é chamada automaticamente na primeira vez que qualquer
/// método de extensão é utilizado. Pode ser chamada manualmente para
/// garantir a inicialização antecipada.
Future<void> inicializar() async {
  if (!_initialized) {
    await initializeDateFormatting(_locale);
    _initialized = true;
  }
}

void _garantirInicializacao() {
  if (!_initialized) {
    initializeDateFormatting(_locale);
    _initialized = true;
  }
}

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
///   print(agora.mes()); // Exibe o nome do mês por extenso.
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
    _garantirInicializacao();
    return DateFormat.d(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.E(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.EEEE(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.LLL(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.LLLL(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.M(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.Md(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.MEd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.MMMd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.MMMEd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.MMMMd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.MMMMEEEEd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.QQQ(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.QQQQ(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.y(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yM(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMEd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMMM(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMMMd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMMMEd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMMMM(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMMMMd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMMMMEEEEd(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yQQQ(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yQQQQ(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.H(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.Hm(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.Hms(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.m(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.s(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.ms(_locale).format(this);
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
    _garantirInicializacao();
    return DateFormat.yMd(_locale).add_Hm().format(this);
  }
}
