import 'package:brasil_datetime/brasil_datetime.dart';

void main() {
  final data = DateTime(1987, 4, 22, 23, 37, 06);

  print(data.dia()); // 22
  print(data.diaSemana()); // quarta-feira
  print(data.diaSemanaAbrev()); // qua.
  print(data.mes()); // abril
  print(data.mesAbrev()); // abr.
  print(data.mesNoAno()); // 4
  print(data.diaMes()); // 22/04
  print(data.diaSemanaEMes()); // qua., 22/04
  print(data.diaMesAbrev()); // 22 de abr.
  print(data.diaSemanaMesAbrev()); // qua., 22 de abr.
  print(data.diaMesExt()); // 22 de abril
  print(data.diaSemanaMesExt()); // quarta-feira, 22 de abril
  print(data.trimestreAbrev()); // T2
  print(data.trimestre()); // 2º trimestre
  print(data.ano()); // 1987
  print(data.anoMes()); // 04/1987
  print(data.diaMesAno()); // 22/04/1987
  print(data.diaMesAnoHoraMinuto()); // 22/04/1987 23:37
  print(data.semanaDiaMesAnoAbrev()); // qua., 22/04/1987
  print(data.mesAnoAbrev()); // abr. de 1987
  print(data.diaMesAnoAbrev()); // 22 de abr. de 1987
  print(data.semanaDiaMesAnoExtAbrev()); // qua., 22 de abr. de 1987
  print(data.mesAnoExt()); // abril de 1987
  print(data.diaMesAnoExt()); // 22 de abril de 1987
  print(data.semanaDiaMesAnoExt()); // quarta-feira, 22 de abril de 1987
  print(data.trimestreAnoAbrev()); // T2 de 1987
  print(data.trimestreAnoExt()); // 2º trimestre de 1987
  print(data.hora()); // 23
  print(data.horaMinuto()); // 23:37
  print(data.horaMinutoSegundo()); // 23:37:06
  print(data.minuto()); // 37
  print(data.segundo()); // 6
  print(data.minutoSegundo()); // 37:06
}
