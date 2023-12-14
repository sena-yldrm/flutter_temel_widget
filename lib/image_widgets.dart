import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNPL8wndVQB12uvCjWzd1_mj0NM63_vwRopg&usqp=CAU";
    return Center(
      child: Column(
        //bütün x ekseni boyunca bunu yay
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            //en büyük boylu resmin boyunca büyür enleri boyunca yayılır
            //ilk resmin boyu yerine ilk resimde container içine yükseklik verebilirsin
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink.shade300,
                    /*
                  *widget bekliyor */
                    child: Image.asset(
                      'assets/images/indir.png',
                      fit: BoxFit.cover, // resim tamamlayacak alana sığ
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink.shade300,
                    child: Image.network(
                      _imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink.shade300,
                    child: CircleAvatar(
                      /*child: Text(
                    'S',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  
                  *image provider bekliyor NetworkImage veya AssetImage 
                  *url bekliyor */
                      // backgroundImage: NetworkImage(
                      //"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNPL8wndVQB12uvCjWzd1_mj0NM63_vwRopg&usqp=CAU"),
                      // *boyle de kullanailirsin yukarıda tanımladığın _imgUrl, de kullanabilrisin

                      backgroundImage: NetworkImage(_imgUrl),
                      backgroundColor: Colors.green, //cemberin yeşili
                      foregroundColor: Colors
                          .deepPurple, //içindeki çocuğun yani s harfinin rengi
                    ),
                  ),
                ),
              ],
            ),
          ),
          //internetten resim getidiğinde o gelene kadar başka resim gösterir
          Container(
            height: 300,
            child: FadeInImage.assetNetwork(
                //yayıl
                fit: BoxFit.contain,
                placeholder: 'assets/images/Runningheart.gif',
                image: _imgUrl),
          ),
          //uygulamada göstermek istideğin resmi hemen kullanmayacaksın
          //yer tutucu yani
          //varsayılan değeri 400 ve satırdan dışarı taştığı için
          //container ile sarmalayıp height verebilirsin
          //ya da expanded diyip kalan boşluğa yayabilirsin
          //içeriden padding atıp boşluklu yapı haline getirebilrsin
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
