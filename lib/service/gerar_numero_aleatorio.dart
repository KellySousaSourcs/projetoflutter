import 'dart:math' as math;

class GerarNumeroAleatorioService {
  static int gerarNumeroAleatorio(int maximo) {
    return math.Random().nextInt(maximo);
  }

}