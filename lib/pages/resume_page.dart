import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/itemized_text.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: DefaultTextStyle.merge(
          style: GoogleFonts.notoSans(),
          child: Container(
            margin: EdgeInsets.only(top: 40, right: 160, left: 160, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Text('2020/05現在'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '概要',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        'アプライアンス機器の構築運用',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      ItemizedText([
                        Text('ロードバランサ'),
                        Text('GSLB'),
                      ]),
                      Text(
                        'ソフトウェア開発',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      ItemizedText([
                        Text('CLIツール開発'),
                      ]),
                      Text(
                        '業務外活動',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      ItemizedText([
                        Text('Androidアプリケーション・ライブラリ開発'),
                        Text('Dartライブラリ・Flutterアプリケーション開発'),
                      ])
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'スキル',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        'ネットワークアプライアンス',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'A10 AX/Thunder',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('ACOS2・4を経験．初期構築やバージョンアップ，config投入などができる．'),
                      ]),
                      Text(
                        'Brocade ADX',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('VIP作成・削除などができる．'),
                      ]),
                      Text(
                        'Cisco Catalyst/Nexus',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('インタフェースのshutやvlanあたりの操作ができる．'),
                      ]),
                      Text(
                        'Citrix NetScaler MPX/SDX/VPX/ADC',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('11.1・12.1を経験．初期構築やバージョンアップ，config投入などができる．'),
                      ]),
                      Text(
                        'F5 BIG-IP',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('v11・13を経験．初期構築やバージョンアップ，config投入などができる．'),
                      ]),
                      Text(
                        'プログラミング言語',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Python',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text(
                            '2015年ころから利用．研究ではRyuを使用してSoftware Defined NetworkingのControllerを実装していた．'),
                        Text('入社後はアプライアンス機器へのconfig投入のためや各種バッチ処理のために利用．'),
                      ]),
                      Text(
                        'Ruby',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('2015年ころから利用．mikutterのPlugin開発やシェルスクリプト代わりに利用．'),
                      ]),
                      Text(
                        'Java',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('2015年ころから利用．Androidアプリケーション・ライブラリ開発経験あり．'),
                      ]),
                      Text(
                        'Kotlin',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('2017年ころから利用．Androidアプリケーション・ライブラリ開発経験あり．'),
                      ]),
                      Text(
                        'Dart',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('2019年ころから利用．ライブラリ・CLIツール・Flutterアプリケーション開発経験あり．'),
                      ]),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '職務経歴',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        'Y株式会社（現職）',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        '所属',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('データセンタネットワーク'),
                      Text(
                        '業務内容',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ItemizedText([
                        Text('LB・GSLB・DNSの構築運用'),
                        Text('上記機器の監視環境構築（主にPrometheus/thanos）'),
                        Text('config投入などの設定変更自動化（Ansible/AWX/Python CLI）'),
                      ]),
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
