import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ContentWidget(),
            Positioned(
              left: 10,
              top: 10,
              right: 10,
              child: Row(
                children: [
                  Icon(Icons.close),
                  Expanded(child: Container()),
                  Icon(Icons.share),
                ],
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 100,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, i) => MaterialButton(
                          child: Text('Hala Satılık mı?'),
                          onPressed: () {},
                        ),
                        itemCount: 10,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: TextField()),
                        MaterialButton(
                          child: Text('Gönder'),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(
          image: AssetImage('assets/images/car.jpeg'),
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            Text(
              '₺250',
              style: TextStyle(fontSize: 36),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
        Text(
          'Kanepe 3 lü',
          style: TextStyle(fontSize: 28),
        ),
        Flexible(
          child: Text(
            'Nereden Gelir?Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginiadaki Hampden-Sydney Collegedan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetu sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan "de Finibus Bonorum et Malorum" (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan "Lorem ipsum dolor sit amet" 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Text(
          'Sahibi : XXX',
          style: TextStyle(fontSize: 28),
        ),
      ],
    );
  }
}
