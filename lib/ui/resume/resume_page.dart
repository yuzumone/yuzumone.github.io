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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('2024/12 現在'),
                    Text('Updated in Dec 2024'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('English version is below.'),
                    Text(
                      '概要',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'アプライアンス機器・サーバの構築運用',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text('- ADC'),
                    Text('- GSLB'),
                    Text('- DNS (権威DNS/フルリゾルバ)'),
                    Text('- GNSS/NTP'),
                    Text(
                      'ソフトウェア開発',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text('- オペレーション自動化・モニタリング関連ツール開発'),
                    Text('- DNS・GSLB レコード管理関連ツール開発'),
                    Text(
                      '業務外活動',
                      style: Theme.of(context).textTheme.titleLarge,
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
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'ネットワークアプライアンス',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '- A10 AX/Thunder',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Brocade ADX',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Cisco Catalyst/Nexus',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Citrix NetScaler MPX/SDX/VPX/ADM',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- F5 BIG-IP',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Whitebox network switch (Cumulus)',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'プログラミング言語',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '- Python',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Ruby',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Java',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Kotlin',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Dart',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Go',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'その他',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text('- モニタリングツール (Prometheus/Alertmanager/Thanos)'),
                    Text('- 構成管理ツール (Chef/Ansible/AWX)'),
                    Text('- DNS (Bind)'),
                    Text('- CaaS (Kubernetes/Argo)'),
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
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'L株式会社（現職）',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '所属',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('データセンタネットワーク'),
                    Text(
                      '業務内容',
                      style: Theme.of(context).textTheme.titleMedium,
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
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      '自然災害発生時における回線利用状況を考慮した資源適合型ネットワークシステム',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('情報処理学会第78回全国大会講演論文集'),
                    Text(
                      '端末連携機能による動的資源適合型ネットワークシステムの研究',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('情報処理学会第79回全国大会講演論文集'),
                    Text(
                      '動的資源適合型ネットワークシステムにおける周辺端末連携機能の実装と評価',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('マルチメディア，分散，協調とモバイル(DICOMO2017)シンポジウム'),
                    Text(
                      'Dynamic Resource Adaptation Method by Cooperative User Devices in Wireless Network',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                        'The 20th International Conference on Network-Based Information Systems, NBiS 2017'),
                    Text(
                      'Cooperative and priority based on dynamic resource adaptation method in wireless network',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                        'International Journal of Space-Based and Situated Computing'),
                  ],
                ),
              ),
              Divider(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Summary',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Configuring and operating appliance and server infrastructure',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text('- ADC'),
                    Text('- GSLB'),
                    Text('- DNS (Authoritative DNS/Full resolver)'),
                    Text('- GNSS/NTP'),
                    Text(
                      'Development',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text('- DevOps and Monitoring tool development'),
                    Text('- DNS and GSLB record management system development'),
                    Text(
                      'Personal activities',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text('- Android app and library development'),
                    Text('- Flutter app and dart library development'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skils',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Network appliances',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '- A10 AX/Thunder',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Brocade ADX',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Cisco Catalyst/Nexus',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Citrix NetScaler MPX/SDX/VPX/ADM',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- F5 BIG-IP',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Whitebox network switch (Cumulus)',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Languages',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '- Python',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Ruby',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Java',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Kotlin',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Dart',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '- Go',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Others',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text('- Monitoring (Prometheus/Alertmanager/Thanos)'),
                    Text('- Provisioning (Chef/Ansible/AWX)'),
                    Text('- DNS (Bind)'),
                    Text('- CaaS (Kubernetes/Argo)'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Career history',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'L Corporation (current company)',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Team',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('Datacenter Network'),
                    Text(
                      'Tasks',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('- Management of LB, GSLB and DNS'),
                    Text(
                        '- Management of monitoring tool (Prometheus and thanos)'),
                    Text(
                        '- Development of configuration automation tool using Ansible, AWX and Python'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Academic papers',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Adaptive Resource Control System for Network Congestion and Failure in Natural Disasters',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('The 78th National Convention of IPSJ'),
                    Text(
                      'Adaptive Resource Control Network System by Cooperated Device Functions',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text('The 79th National Convention of IPSJ'),
                    Text(
                      'Implementation and Evaluation of Cooperative Device Functions for Dynamic Resource Adaptive Network System',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                        'Multimedia, Distributed, Cooperative, and Mobile Symposium, DICOMO 2017'),
                    Text(
                      'Dynamic Resource Adaptation Method by Cooperative User Devices in Wireless Network',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                        'The 20th International Conference on Network-Based Information Systems, NBiS 2017'),
                    Text(
                      'Cooperative and priority based on dynamic resource adaptation method in wireless network',
                      style: Theme.of(context).textTheme.titleMedium,
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
