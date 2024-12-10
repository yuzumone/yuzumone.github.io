import 'dart:io';

import 'package:grinder/grinder.dart';

main(args) => grind(args);

@Task('Get google fonts for release build')
void fonts() async {
  var notoSansJp = [
    {
      'name': 'NotoSansJP-Thin.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFBEi75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-ExtraLight.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFJEj75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-Light.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFE8j75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-Regular.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFBEj75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-Medium.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFCMj75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-SemiBold.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFM8k75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-Bold.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFPYk75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-ExtraBold.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFJEk75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-Black.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFLgk75vY0rw-oME.ttf'
    },
    {
      'name': 'NotoSansJP-VariableFont_wght.ttf',
      'url':
          'https://fonts.gstatic.com/s/notosansjp/v53/-F62fjtqLzI2JPCgQBnw7HFoxgIO2lZ9hg.ttf'
    },
  ];
  for (var f in notoSansJp) {
    await Process.start('curl', [
      '-o',
      'google_fonts/${f["name"]}',
      f['url']!,
    ]);
    print('Download ${f["name"]}');
  }
}

@Task('flutter pub get')
void pubGet() async => _flutter(['packages', 'pub', 'get']);

@Task('flutter build web')
@Depends(fonts)
void build() async {
  await _flutter(['build', 'web', '--web-renderer', 'html']);
  final robots = '''User-agent: *
Disallow:
''';
  File('./build/web/robots.txt').writeAsStringSync(robots);
}

@Task('dart format')
void format() async => await _dart(['format', '.']);

@Task('flutter analyze')
void analyze() async => await _flutter(['analyze']);

@Task('flutter test')
void test() async => await _flutter(['test']);

@Task('flutter analyze, test and format check')
@Depends(pubGet, analyze, test)
void lint() async => await _dart(['format', '.', '--set-exit-if-changed']);

@DefaultTask()
@Depends(lint, build)
void task() {}

Future<void> _dart(List<String> arguments) async {
  final fvm = await Process.run('which', ['fvm']);
  if (fvm.exitCode == 0) {
    final result = await Process.start('fvm', ['dart', ...arguments]);
    await stdout.addStream(result.stdout);
    await stderr.addStream(result.stderr);
  } else {
    final result = await Process.start('dart', arguments);
    await stdout.addStream(result.stdout);
    await stderr.addStream(result.stderr);
  }
}

Future<void> _flutter(List<String> arguments) async {
  final fvm = await Process.run('which', ['fvm']);
  if (fvm.exitCode == 0) {
    final result = await Process.start('fvm', ['flutter', ...arguments]);
    await stdout.addStream(result.stdout);
    await stderr.addStream(result.stderr);
  } else {
    final result = await Process.start('flutter', arguments);
    await stdout.addStream(result.stdout);
    await stderr.addStream(result.stderr);
  }
}
