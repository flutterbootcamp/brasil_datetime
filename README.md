# brasil_datetime

Extensões para `DateTime` em pt_BR.

## Apresentação

Este package facilita a manipulação de objetos `DateTime` de acordo com o padrão e formatos brasileiros.

### Instalação

#### Dependência

Insira a dependência do pacote, executando o comando: 

`flutter pub add brasil_datetime`

A opção acima é a recomendada, pois cria dependência dentro no formato adequado, e em seguida executa o comando para baixar o pacote automaticamente.

Se preferir 'fazer na mão', adicione a linha a seguir no seu arquivo pubspec.yaml

```yaml
dependencies:
  brasil_datetime: 0.1.0
```

Em seguida, execute o comando `flutter pub get` manualmente para baixar o pacote.

#### Importação

No seu código Dart, faça a importação usando no cabeçalho a diretriz:

`import 'package:brasil_datetime/brasil_datetime.dart';`

### Extensões

Para qualquer objeto `DateTime`, as extensões abaixos estão disponíveis:

```dart
// objeto de exemplo
final data = DateTime(1987, 4, 22, 23, 37, 06);

data.diaMesAno();                // 22/04/1987
data.dia();                      // 22
data.diaSemana();                // quarta-feira
data.diaSemanaAbrev();           // qua
data.mes();                      // abril
data.mesAbrev();                 // abr
data.mesNoAno();                 // 4
data.diaMes();                   // 22/4
data.diaMesAbrev();              // 22 de abr
data.diaSemanaMesAbrev();        // qua, 22 de abr
data.diaSemanaEMes();            // qua, 22/04
data.diaMesExt();                // 22 de abril
data.diaSemanaMesExt();          // quarta-feira, 22 de abril
data.trimestreAbrev();           // T2
data.trimestre();                // 2º trimestre
data.ano();                      // 1987
data.anoMes();                   // 04/1987
data.semanaDiaMesAnoAbrev();     // qua, 22/04/1987
data.mesAnoAbrev();              // abr de 1987
data.diaMesAnoAbrev();           // 22 de abr de 1987
data.semanaDiaMesAnoExtAbrev();  // qua, 22 de abr de 1987
data.mesAnoExt();                // abril de 1987
data.diaMesAnoExt();             // 22 de abril de 1987
data.semanaDiaMesAnoExt();       // quarta-feira, 22 de abril de 1987
data.trimestreAnoAbrev();        // T2 de 1987
data.hora();                     // 23
data.horaMinuto();               // 23:37
data.minuto();                   // 23:37:06
data.segundo();                  // 23:37:06
data.minutoSegundo();            // 37:06
```




