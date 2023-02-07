import 'package:brasil_datetime/brasil_datetime.dart';
import 'package:test/test.dart';

final data = DateTime(1987, 4, 22, 23, 37, 06);

void main() {
  test('dia, mês e ano', () => expect(data.diaMesAno(), '22/04/1987'));
  test('dia', () => expect(data.dia(), '22'));
  test('dia da semana', () => expect(data.diaSemana(), 'quarta-feira'));
  test('dia da semana abreviado', () => expect(data.diaSemanaAbrev(), 'qua.'));
  test('mês', () => expect(data.mes(), 'abril'));
  test('mês abreviado', () => expect(data.mesAbrev(), 'abr.'));
  test('mês no ano', () => expect(data.mesNoAno(), '4'));
  test('dia e mês', () => expect(data.diaMes(), '22/4'));
  test('dia e mês abreviado', () => expect(data.diaMesAbrev(), '22 de abr.'));
  test('dia da semana e mês abreviado',
      () => expect(data.diaSemanaMesAbrev(), 'qua., 22 de abr.'));
  test(
      'dia da semana e mês', () => expect(data.diaSemanaEMes(), 'qua., 22/04'));
  test('dia e mês', () => expect(data.diaMesExt(), '22 de abril'));
  test('mês (MMMM)',
      () => expect(data.diaSemanaMesExt(), 'quarta-feira, 22 de abril'));

  test('trimestre abreviado', () => expect(data.trimestreAbrev(), 'T2'));
  test('trimestre', () => expect(data.trimestre(), '2º trimestre'));
  test('ano', () => expect(data.ano(), '1987'));
  test('ano e mês', () => expect(data.anoMes(), '04/1987'));
  test('semana, dia, mês e ano abreviado',
      () => expect(data.semanaDiaMesAnoAbrev(), 'qua., 22/04/1987'));
  test('mês e ano abreviado', () => expect(data.mesAnoAbrev(), 'abr. de 1987'));

  test('dia, mês e ano abreviado',
      () => expect(data.diaMesAnoAbrev(), '22 de abr. de 1987'));

  test('semana, dia, mês e ano por extenso abreviado',
      () => expect(data.semanaDiaMesAnoExtAbrev(), 'qua., 22 de abr. de 1987'));

  test(
      'mês e ano por extenso', () => expect(data.mesAnoExt(), 'abril de 1987'));

  test('dia, mês e ano por extenso',
      () => expect(data.diaMesAnoExt(), '22 de abril de 1987'));

  test(
      'semana, dia, mês e ano por extenso',
      () => expect(
          data.semanaDiaMesAnoExt(), 'quarta-feira, 22 de abril de 1987'));

  test('trimestre e ano abreviado',
      () => expect(data.trimestreAnoAbrev(), 'T2 de 1987'));

  test('trimestre a no por extenso',
      () => expect(data.trimestreAnoExt(), '2º trimestre de 1987'));

  test('hora', () => expect(data.hora(), '23'));

  test('hora e minuto', () => expect(data.horaMinuto(), '23:37'));

  test('hora, minuto e segundo',
      () => expect(data.horaMinutoSegundo(), '23:37:06'));
  test('minuto', () => expect(data.minuto(), '37'));
  test('segundo', () => expect(data.segundo(), '6'));
  test('minuto e segundo', () => expect(data.minutoSegundo(), '37:06'));
  test('dia, mes, ano, hora e minuto',
      () => expect(data.diaMesAnoHoraMinuto(), '22/04/1987 23:37'));
}
