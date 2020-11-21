import 'package:udwmj14/constantes.dart';

class Controller {
  final int _pageNumber;
  Controller(this._pageNumber);

  String getPageTitle() {
    if (this._pageNumber == 1) {
      return Constantes.primeiraPagina;
    } else if (this._pageNumber == 2) {
      return Constantes.segundaPagina;
    } else if (this._pageNumber == 3) {
      return Constantes.terceiraPagina;
    } else if (this._pageNumber == 4) {
      return Constantes.quartaPagina;
    } else if (this._pageNumber == 5) {
      return Constantes.quintaPagina;
    } else if (this._pageNumber == 6) {
      return Constantes.sextaPagina;
    } else {
      return "Página ${this._pageNumber}";
    }
  }

  int getPageNumber() {
    return _pageNumber;
  }

  int getNextPage() {
    if (_pageNumber == Constantes.maxPages) {
      return 1;
    } else {
      return _pageNumber + 1;
    }
  }
}
