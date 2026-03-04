import 'package:brasil_datetime/brasil_datetime.dart';
import 'package:test/test.dart';

void main() {
  final data = DateTime(1987, 4, 22, 23, 37, 06);

  group('Dia', () {
    test('dia', () => expect(data.dia(), '22'));
    test('dia da semana', () => expect(data.diaSemana(), 'quarta-feira'));
    test(
      'dia da semana abreviado',
      () => expect(data.diaSemanaAbrev(), 'qua.'),
    );
  });

  group('Mês', () {
    test('mês', () => expect(data.mes(), 'abril'));
    test('mês abreviado', () => expect(data.mesAbrev(), 'abr.'));
    test('mês no ano', () => expect(data.mesNoAno(), '4'));
  });

  group('Dia e Mês', () {
    test('dia e mês', () => expect(data.diaMes(), '22/04'));
    test(
      'dia da semana e mês',
      () => expect(data.diaSemanaEMes(), 'qua., 22/04'),
    );
    test(
      'dia e mês abreviado',
      () => expect(data.diaMesAbrev(), '22 de abr.'),
    );
    test(
      'dia da semana e mês abreviado',
      () => expect(data.diaSemanaMesAbrev(), 'qua., 22 de abr.'),
    );
    test(
      'dia e mês por extenso',
      () => expect(data.diaMesExt(), '22 de abril'),
    );
    test(
      'dia da semana e mês por extenso',
      () => expect(data.diaSemanaMesExt(), 'quarta-feira, 22 de abril'),
    );
  });

  group('Trimestre', () {
    test('trimestre abreviado', () => expect(data.trimestreAbrev(), 'T2'));
    test('trimestre', () => expect(data.trimestre(), '2º trimestre'));
  });

  group('Ano', () {
    test('ano', () => expect(data.ano(), '1987'));
    test('mês e ano', () => expect(data.anoMes(), '04/1987'));
  });

  group('Dia, Mês e Ano', () {
    test(
      'dia, mês e ano',
      () => expect(data.diaMesAno(), '22/04/1987'),
    );
    test(
      'semana, dia, mês e ano abreviado',
      () => expect(data.semanaDiaMesAnoAbrev(), 'qua., 22/04/1987'),
    );
    test(
      'mês e ano abreviado',
      () => expect(data.mesAnoAbrev(), 'abr. de 1987'),
    );
    test(
      'dia, mês e ano abreviado',
      () => expect(data.diaMesAnoAbrev(), '22 de abr. de 1987'),
    );
    test(
      'semana, dia, mês e ano por extenso abreviado',
      () => expect(data.semanaDiaMesAnoExtAbrev(), 'qua., 22 de abr. de 1987'),
    );
    test(
      'mês e ano por extenso',
      () => expect(data.mesAnoExt(), 'abril de 1987'),
    );
    test(
      'dia, mês e ano por extenso',
      () => expect(data.diaMesAnoExt(), '22 de abril de 1987'),
    );
    test(
      'semana, dia, mês e ano por extenso',
      () => expect(
        data.semanaDiaMesAnoExt(),
        'quarta-feira, 22 de abril de 1987',
      ),
    );
  });

  group('Trimestre e Ano', () {
    test(
      'trimestre e ano abreviado',
      () => expect(data.trimestreAnoAbrev(), 'T2 de 1987'),
    );
    test(
      'trimestre e ano por extenso',
      () => expect(data.trimestreAnoExt(), '2º trimestre de 1987'),
    );
  });

  group('Hora', () {
    test('hora', () => expect(data.hora(), '23'));
    test('hora e minuto', () => expect(data.horaMinuto(), '23:37'));
    test(
      'hora, minuto e segundo',
      () => expect(data.horaMinutoSegundo(), '23:37:06'),
    );
    test('minuto', () => expect(data.minuto(), '37'));
    test('segundo', () => expect(data.segundo(), '6'));
    test('minuto e segundo', () => expect(data.minutoSegundo(), '37:06'));
  });

  group('Combinado', () {
    test(
      'dia, mês, ano, hora e minuto',
      () => expect(data.diaMesAnoHoraMinuto(), '22/04/1987 23:37'),
    );
  });

  group('Datas diferentes', () {
    test('primeiro dia do ano', () {
      final primeiroDia = DateTime(2024, 1, 1, 0, 0, 0);
      expect(primeiroDia.dia(), '1');
      expect(primeiroDia.mes(), 'janeiro');
      expect(primeiroDia.diaMesAno(), '01/01/2024');
      expect(primeiroDia.diaSemana(), 'segunda-feira');
      expect(primeiroDia.trimestreAbrev(), 'T1');
    });

    test('último dia do ano', () {
      final ultimoDia = DateTime(2024, 12, 31, 23, 59, 59);
      expect(ultimoDia.dia(), '31');
      expect(ultimoDia.mes(), 'dezembro');
      expect(ultimoDia.diaMesAno(), '31/12/2024');
      expect(ultimoDia.trimestreAbrev(), 'T4');
      expect(ultimoDia.trimestre(), '4º trimestre');
    });

    test('meia-noite', () {
      final meiaNoite = DateTime(2024, 6, 15, 0, 0, 0);
      expect(meiaNoite.hora(), '00');
      expect(meiaNoite.horaMinuto(), '00:00');
      expect(meiaNoite.horaMinutoSegundo(), '00:00:00');
    });

    test('meio-dia', () {
      final meioDia = DateTime(2024, 6, 15, 12, 0, 0);
      expect(meioDia.hora(), '12');
      expect(meioDia.horaMinuto(), '12:00');
    });
  });
}
