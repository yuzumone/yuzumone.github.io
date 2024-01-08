import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/responsive_widget.dart';

@RoutePage()
class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveWidget(
        child: Container(
          margin: const EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Text('2022/04 現在'),
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
                    Text('- ADC'),
                    Text('- GSLB'),
                    Text('- DNS'),
                    Text('- GNSS'),
                    Text(
                      'ソフトウェア開発',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text('- 自動化ツール開発'),
                    Text(
                      '業務外活動',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text('- Android アプリケーション・ライブラリ開発'),
                    Text('- Dart ライブラリ・Flutter アプリケーション開発'),
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
                      '- A10 AX/Thunder',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Brocade ADX',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Cisco Catalyst/Nexus',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Citrix NetScaler MPX/SDX/VPX/ADM',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- F5 BIG-IP',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Whitebox network switch (Cumulus)',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'プログラミング言語',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      '- Python',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Ruby',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Java',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Kotlin',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '- Dart',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'その他',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text('- データセンタネットワーク監視 (Prometheus/Alertmanager/Thanos)'),
                    Text('- 構成管理ツール (Chef/Ansible/AWX)'),
                    Text('- PaaS (VMware Tanzu Application Service)'),
                    Text('- CaaS (Kubernetes)'),
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
                    Text('- LB・GSLB・DNS の構築運用'),
                    Text('- 監視環境構築（Prometheus/thanos）'),
                    Text('- 設定変更自動化（Ansible/AWX/Python CLI）'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '論文発表',
                      style: Theme.of(context).textTheme.headline5,
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
    );
  }
}
