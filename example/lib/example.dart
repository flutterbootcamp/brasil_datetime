import 'package:brasil_datetime/brasil_datetime.dart';

final data = DateTime(1987, 4, 22, 23, 37, 06);

void main() {
  data.diaMesAno(); // 22/04/1987
  data.dia(); // 22
  data.diaSemana(); // quarta-feira
  data.diaSemanaAbrev(); // qua
  data.mes(); // abril
  data.mesAbrev(); // abr
  data.mesNoAno(); // 4
  data.diaMes(); // 22/4
  data.diaMesAbrev(); // 22 de abr
  data.diaSemanaMesAbrev(); // qua, 22 de abr
  data.diaSemanaEMes(); // qua, 22/04
  data.diaMesExt(); // 22 de abril
  data.diaSemanaMesExt(); // quarta-feira, 22 de abril
  data.trimestreAbrev(); // T2
  data.trimestre(); // 2º trimestre
  data.ano(); // 1987
  data.anoMes(); // 04/1987
  data.semanaDiaMesAnoAbrev(); // qua, 22/04/1987
  data.mesAnoAbrev(); // abr de 1987
  data.diaMesAnoAbrev(); // 22 de abr de 1987
  data.semanaDiaMesAnoExtAbrev(); // qua, 22 de abr de 1987
  data.mesAnoExt(); // abril de 1987
  data.diaMesAnoExt(); // 22 de abril de 1987
  data.semanaDiaMesAnoExt(); // quarta-feira, 22 de abril de 1987
  data.trimestreAnoAbrev(); // T2 de 1987
  data.hora(); // 23
  data.horaMinuto(); // 23:37
  data.minuto(); // 37
  data.segundo(); // 6
  data.minutoSegundo(); // 37:06
}
