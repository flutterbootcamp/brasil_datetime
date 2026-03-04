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

/// Extensões para objetos DateTime em pt_BR.
extension BrasilDateTime on DateTime {
  /// Retorna o dia.
  ///
  /// Ex: `22`
  String dia() {
    _garantirInicializacao();
    return DateFormat.d(_locale).format(this);
  }

  /// Retorna o dia da semana abreviado.
  ///
  /// Ex: `qua.`
  String diaSemanaAbrev() {
    _garantirInicializacao();
    return DateFormat.E(_locale).format(this);
  }

  /// Retorna o dia da semana.
  ///
  /// Ex: `quarta-feira`
  String diaSemana() {
    _garantirInicializacao();
    return DateFormat.EEEE(_locale).format(this);
  }

  /// Retorna o nome do mês abreviado.
  ///
  /// Ex: `abr.`
  String mesAbrev() {
    _garantirInicializacao();
    return DateFormat.LLL(_locale).format(this);
  }

  /// Retorna o nome do mês.
  ///
  /// Ex: `abril`
  String mes() {
    _garantirInicializacao();
    return DateFormat.LLLL(_locale).format(this);
  }

  /// Retorna `1` até `12` de acordo com o mês do ano.
  String mesNoAno() {
    _garantirInicializacao();
    return DateFormat.M(_locale).format(this);
  }

  /// Retorna dia e mês no formato `dd/mm`.
  ///
  /// Ex: `22/04`
  String diaMes() {
    _garantirInicializacao();
    return DateFormat.Md(_locale).format(this);
  }

  /// Retorna dia da semana e mês no formato `[semana], dd/mm`.
  ///
  /// Ex: `qua., 22/04`
  String diaSemanaEMes() {
    _garantirInicializacao();
    return DateFormat.MEd(_locale).format(this);
  }

  /// Retorna o dia e mês abreviado no formato `[dia] de [mes]`.
  ///
  /// Ex: `22 de abr.`
  String diaMesAbrev() {
    _garantirInicializacao();
    return DateFormat.MMMd(_locale).format(this);
  }

  /// Retorna dia da semana e mês abreviado no formato `[semana], [dia] de [mes]`.
  ///
  /// Ex: `qua., 22 de abr.`
  String diaSemanaMesAbrev() {
    _garantirInicializacao();
    return DateFormat.MMMEd(_locale).format(this);
  }

  /// Retorna dia e mês por extenso no formato: `[dia] de [mes]`.
  ///
  /// Ex: `22 de abril`
  String diaMesExt() {
    _garantirInicializacao();
    return DateFormat.MMMMd(_locale).format(this);
  }

  /// Retorna dia da semana e mês por extenso no formato: `[semana], [dia] de [mes]`.
  ///
  /// Ex: `quarta-feira, 22 de abril`
  String diaSemanaMesExt() {
    _garantirInicializacao();
    return DateFormat.MMMMEEEEd(_locale).format(this);
  }

  /// Retorna de `1` a `4` de acordo com o trimestre no formato: `T[trimestre]`.
  ///
  /// Ex: `T2`
  String trimestreAbrev() {
    _garantirInicializacao();
    return DateFormat.QQQ(_locale).format(this);
  }

  /// Retorna o trimestre por extenso.
  ///
  /// Ex: `2º trimestre`
  String trimestre() {
    _garantirInicializacao();
    return DateFormat.QQQQ(_locale).format(this);
  }

  /// Retorna ano.
  ///
  /// Ex: `1987`
  String ano() {
    _garantirInicializacao();
    return DateFormat.y(_locale).format(this);
  }

  /// Retorna mês e ano no formato `mm/aaaa`.
  ///
  /// Ex: `04/1987`
  String anoMes() {
    _garantirInicializacao();
    return DateFormat.yM(_locale).format(this);
  }

  /// Retorna dia, mês e ano no formato `dd/mm/aaaa`.
  ///
  /// Ex: `22/04/1987`
  String diaMesAno() {
    _garantirInicializacao();
    return DateFormat.yMd(_locale).format(this);
  }

  /// Retorna dia da semana, mês e ano no formato `[semana], dd/mm/aaaa`.
  ///
  /// Ex: `qua., 22/04/1987`
  String semanaDiaMesAnoAbrev() {
    _garantirInicializacao();
    return DateFormat.yMEd(_locale).format(this);
  }

  /// Retorna mês e ano no formato `[mes] de [aaaa]`.
  ///
  /// Ex: `abr. de 1987`
  String mesAnoAbrev() {
    _garantirInicializacao();
    return DateFormat.yMMM(_locale).format(this);
  }

  /// Retorna dia, mês e ano no formato `[dia] de [mes] de [ano]`.
  ///
  /// Ex: `22 de abr. de 1987`
  String diaMesAnoAbrev() {
    _garantirInicializacao();
    return DateFormat.yMMMd(_locale).format(this);
  }

  /// Retorna dia da semana, dia, mês e ano abreviado no formato `[semana], [dia] de [mes] de [ano]`.
  ///
  /// Ex: `qua., 22 de abr. de 1987`
  String semanaDiaMesAnoExtAbrev() {
    _garantirInicializacao();
    return DateFormat.yMMMEd(_locale).format(this);
  }

  /// Retorna mês e ano por extenso no formato `[mes] de [ano]`.
  ///
  /// Ex: `abril de 1987`
  String mesAnoExt() {
    _garantirInicializacao();
    return DateFormat.yMMMM(_locale).format(this);
  }

  /// Retorna dia, mês e ano por extenso no formato `[dia] de [mes] de [ano]`.
  ///
  /// Ex: `22 de abril de 1987`
  String diaMesAnoExt() {
    _garantirInicializacao();
    return DateFormat.yMMMMd(_locale).format(this);
  }

  /// Retorna dia da semana, dia, mês e ano por extenso no formato `[semana], [dia] de [mes] de [ano]`.
  ///
  /// Ex: `quarta-feira, 22 de abril de 1987`
  String semanaDiaMesAnoExt() {
    _garantirInicializacao();
    return DateFormat.yMMMMEEEEd(_locale).format(this);
  }

  /// Retorna trimestre e ano abreviado no formato `T[trimestre] de [ano]`.
  ///
  /// Ex: `T2 de 1987`
  String trimestreAnoAbrev() {
    _garantirInicializacao();
    return DateFormat.yQQQ(_locale).format(this);
  }

  /// Retorna trimestre e ano por extenso no formato `[trimestre]º trimestre de [ano]`.
  ///
  /// Ex: `2º trimestre de 1987`
  String trimestreAnoExt() {
    _garantirInicializacao();
    return DateFormat.yQQQQ(_locale).format(this);
  }

  /// Retorna hora (24h).
  ///
  /// Ex: `23`
  String hora() {
    _garantirInicializacao();
    return DateFormat.H(_locale).format(this);
  }

  /// Retorna hora e minuto (24h).
  ///
  /// Ex: `23:37`
  String horaMinuto() {
    _garantirInicializacao();
    return DateFormat.Hm(_locale).format(this);
  }

  /// Retorna hora, minuto e segundo (24h).
  ///
  /// Ex: `23:37:06`
  String horaMinutoSegundo() {
    _garantirInicializacao();
    return DateFormat.Hms(_locale).format(this);
  }

  /// Retorna minuto.
  ///
  /// Ex: `37`
  String minuto() {
    _garantirInicializacao();
    return DateFormat.m(_locale).format(this);
  }

  /// Retorna segundo.
  ///
  /// Ex: `6`
  String segundo() {
    _garantirInicializacao();
    return DateFormat.s(_locale).format(this);
  }

  /// Retorna minuto e segundo (24h).
  ///
  /// Ex: `37:06`
  String minutoSegundo() {
    _garantirInicializacao();
    return DateFormat.ms(_locale).format(this);
  }

  /// Retorna dia, mes, ano, hora e minuto.
  ///
  /// Ex: `22/04/1987 23:37`
  String diaMesAnoHoraMinuto() {
    _garantirInicializacao();
    return DateFormat.yMd(_locale).add_Hm().format(this);
  }
}
