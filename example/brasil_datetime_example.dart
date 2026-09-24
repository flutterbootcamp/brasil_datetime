import 'dart:io';

import 'package:brasil_datetime/brasil_datetime.dart';

void main() {
  final data = DateTime(1987, 4, 22, 23, 37, 06);

  stdout
    ..writeln(data.dia()) // 22
    ..writeln(data.diaSemana()) // quarta-feira
    ..writeln(data.diaSemanaAbrev()) // qua.
    ..writeln(data.mes()) // abril
    ..writeln(data.mesAbrev()) // abr.
    ..writeln(data.mesNoAno()) // 4
    ..writeln(data.diaMes()) // 22/04
    ..writeln(data.diaSemanaEMes()) // qua., 22/04
    ..writeln(data.diaMesAbrev()) // 22 de abr.
    ..writeln(data.diaSemanaMesAbrev()) // qua., 22 de abr.
    ..writeln(data.diaMesExt()) // 22 de abril
    ..writeln(data.diaSemanaMesExt()) // quarta-feira, 22 de abril
    ..writeln(data.trimestreAbrev()) // T2
    ..writeln(data.trimestre()) // 2º trimestre
    ..writeln(data.ano()) // 1987
    ..writeln(data.anoMes()) // 04/1987
    ..writeln(data.diaMesAno()) // 22/04/1987
    ..writeln(data.diaMesAnoHoraMinuto()) // 22/04/1987 23:37
    ..writeln(data.semanaDiaMesAnoAbrev()) // qua., 22/04/1987
    ..writeln(data.mesAnoAbrev()) // abr. de 1987
    ..writeln(data.diaMesAnoAbrev()) // 22 de abr. de 1987
    ..writeln(data.semanaDiaMesAnoExtAbrev()) // qua., 22 de abr. de 1987
    ..writeln(data.mesAnoExt()) // abril de 1987
    ..writeln(data.diaMesAnoExt()) // 22 de abril de 1987
    ..writeln(data.semanaDiaMesAnoExt()) // quarta-feira, 22 de abril de 1987
    ..writeln(data.trimestreAnoAbrev()) // T2 de 1987
    ..writeln(data.trimestreAnoExt()) // 2º trimestre de 1987
    ..writeln(data.hora()) // 23
    ..writeln(data.horaMinuto()) // 23:37
    ..writeln(data.horaMinutoSegundo()) // 23:37:06
    ..writeln(data.minuto()) // 37
    ..writeln(data.segundo()) // 6
    ..writeln(data.minutoSegundo()); // 37:06
}
