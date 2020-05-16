import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {

  final double sideMergin;
  const MainPage({Key key, this.sideMergin = 160.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: DefaultTextStyle.merge(
          style: GoogleFonts.notoSans(),
          child: Container(
            margin: EdgeInsets.only(top: 40, right: sideMergin, left: sideMergin, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Center(
                    child: Image.network(
                        'https://avatars1.githubusercontent.com/u/5382232'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Biography',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text('2012/04 ~ 2016/03 岩手県立大学 ソフトウェア情報学部'),
                      Text('2016/04 ~ 2018/03 岩手県立大学 ソフトウェア情報学研究科'),
                      Text('2018/04 ~ Y株式会社'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Research',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        '自然災害発生時における回線利用状況を考慮した資源適合型ネットワークシステム',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('情報処理学会第78回全国大会講演論文集'),
                      Text(
                        '端末連携機能による動的資源適合型ネットワークシステムの研究',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('情報処理学会第79回全国大会講演論文集'),
                      Text(
                        '動的資源適合型ネットワークシステムにおける周辺端末連携機能の実装と評価',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('マルチメディア，分散，協調とモバイル(DICOMO2017)シンポジウム'),
                      Text(
                        'Dynamic Resource Adaptation Method by Cooperative User Devices in Wireless Network',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                          'The 20th International Conference on Network-Based Information Systems, NBiS 2017'),
                      Text(
                        'Cooperative and priority based on dynamic resource adaptation method in wireless network',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                          'International Journal of Space-Based and Situated Computing'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}