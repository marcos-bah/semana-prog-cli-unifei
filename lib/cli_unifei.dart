Map<String, dynamic> horario(String base) {
  // ignore: constant_identifier_names
  const DIAS = {
    2: "Segunda-Feira",
    3: "Terça-Feira",
    4: "Quarta-Feira",
    5: "Quinta-Feira",
    6: "Sexta-Feira",
    7: "Sábado",
    1: "Domingo"
  };

  // ignore: constant_identifier_names
  const HORARIOS = {
    'M1': {"inicio": '07:00', "fim": '07:55'},
    'M2': {"inicio": '07:55', "fim": '08:50'},
    'M3': {"inicio": '18:50', "fim": '09:45'},
    'M4': {"inicio": '10:10', "fim": '11:05'},
    'M5': {"inicio": '11:05', "fim": '12:00'},
    'T1': {"inicio": '13:30', "fim": '14:25'},
    'T2': {"inicio": '14:25', "fim": '15:20'},
    'T3': {"inicio": '15:45', "fim": '16:40'},
    'T4': {"inicio": '16:40', "fim": '17:35'},
    'T5': {"inicio": '17:35', "fim": '18:30'},
    'N1': {"inicio": '19:00', "fim": '19:50'},
    'N2': {"inicio": '19:50', "fim": '20:40'},
    'N3': {"inicio": '21:00', "fim": '21:50'},
    'N4': {"inicio": '21:50', "fim": '22:40'},
    'N5': {"inicio": '22:40', "fim": '23:30'}
  };

  // ignore: constant_identifier_names
  const TURNOS = {
    'M': "Manhã",
    'T': "Tarde",
    'N': "Noite",
  };

  Map<String, dynamic> saida = {};

  // percorrer a string ate achar o turno
  for (var i = 0; i < base.length; i++) {
    if (TURNOS.containsKey(base[i])) {
      saida["turno"] = TURNOS[base[i]]!;

      saida["dias"] = [];
      for (var j = 0; j < i; j++) {
        if (DIAS.containsKey(int.parse(base[j]))) {
          saida["dias"]!.add(DIAS[int.parse(base[j])]!);
        }
      }

      saida["horario"] = {
        "inicio": HORARIOS[base[i] + base[i + 1]]!["inicio"],
        "fim": HORARIOS[base[i] + base[base.length - 1]]!["fim"]
      };
      return saida;
    }
  }

  return {};
}
