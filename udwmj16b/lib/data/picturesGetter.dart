import '../model/picture.dart';

class PicturesGetter {
  final List<Picture> _pictures = [
    Picture(
      city: "Nova York",
      country: "EUA",
      description:
          "A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo. (Wikipédia)",
      imgUrl:
          "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Grand Canyon",
      country: "EUA",
      description:
          "O Grand Canyon, no Arizona, é uma formação natural constituída de camadas de rocha vermelha, que revelam milhões de anos da história geológica em seção transversal. De vastas proporções, o cânion tem, em média, 16 km de largura e 1,6 km de profundidade ao longo de seu comprimento de 445 km. Grande parte da área é um parque nacional, com as paisagens impressionantes e as corredeiras de águas bravas do Rio Colorado. ",
      imgUrl:
          "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Guarapari",
      country: "Brasil",
      description:
          "Guarapari é um município brasileiro no litoral do estado do Espírito Santo, Região Sudeste do país. Localiza-se na Região Metropolitana de Vitória e sua população em 2018 era de 122 982 habitantes. A sua distância até Vitória é de 51 quilômetros; e até Brasília, 1 264 km.",
      imgUrl:
          "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Lagoa da Pampulha - BH",
      country: "Brasil",
      description:
          "A Lagoa da Pampulha é uma lagoa situada na região da Pampulha no município de Belo Horizonte no Estado de Minas Gerais.",
      imgUrl:
          "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Guarapari",
      country: "Brasil",
      description:
          "Guarapari é um município brasileiro no litoral do estado do Espírito Santo, Região Sudeste do país. Localiza-se na Região Metropolitana de Vitória e sua população em 2018 era de 122 982 habitantes. A sua distância até Vitória é de 51 quilômetros; e até Brasília, 1 264 km.",
      imgUrl:
          "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Manaus",
      country: "Brasil",
      description:
          "Manaus, nos bancos do Rio Negro no noroeste do Brasil, é a capital do vasto estado do Amazonas. Trata-se de um ponto de partida importante próximo à Floresta Amazônica. A leste da cidade, o Rio Negro, escuro, converge para o Rio Solimões, barrento, resultando em um fenômeno visual incrível chamado de Encontro das Águas. A combinação dos afluentes forma o Rio Amazonas. ",
      imgUrl:
          "https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Rio Doce",
      country: "Brasil",
      description:
          "O rio Doce é um curso de água da Região Sudeste do Brasil, que banha os estados de Minas Gerais e Espírito Santo. Com cerca de 853 km de extensão, seu curso representa a mais importante bacia hidrográfica totalmente incluída na Região Sudeste.",
      imgUrl:
          "https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Vale S.A.",
      country: "Brasil",
      description:
          "Vale é uma mineradora multinacional brasileira e uma das maiores operadoras de logística do país. É uma das maiores empresas de mineração do mundo e também a maior produtora de minério de ferro, de pelotas e de níquel. A empresa também produz manganês, ferroliga, cobre, bauxita, potássio, caulim, alumina, alumínio e lama tóxica.",
      imgUrl:
          "https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Picture(
      city: "Samambaia",
      country: "Planta",
      description:
          "As samambaias, ou fetos, são vegetais vasculares membros do táxon das pteridófitas. Elas possuem tecidos vasculares, folhas verdadeiras, se reproduzem através de esporos e não produzem sementes ou flores. A diversificação das samambaias parece ter ocorrido no Devoniano.",
      imgUrl:
          "https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
  ];

  List<Picture> getPictures() {
    return _pictures;
  }
}
