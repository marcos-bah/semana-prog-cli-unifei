import 'package:cli_unifei/cli_unifei.dart' as cli_unifei;

void main(List<String> arguments) {
  // pegar os argumento
  var args = arguments;
  // chamar a funcao
  print('${cli_unifei.horario(args[0])}');
}
