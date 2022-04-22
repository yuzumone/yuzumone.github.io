import 'dart:io';

import 'package:grinder/grinder.dart';

main(args) => grind(args);

@Task('flutter pub get')
pubGet() async => _flutter(['packages', 'pub', 'get']);

@Task('flutter build web')
build() async {
  await _flutter(['build', 'web', '--web-renderer', 'html']);
  final robots = '''User-agent: *
Disallow:
''';
  File('./build/web/robots.txt').writeAsStringSync(robots);
}

@Task('flutter format')
void format() async => await _flutter(['format']);

@Task('flutter analyze')
void analyze() async => await _flutter(['analyze']);

@Task('flutter test')
void test() async => await _flutter(['test']);

@Task('flutter analyze, test and format check')
@Depends(pubGet, analyze, test)
void lint() async => await _flutter(['format', '.', '--set-exit-if-changed']);

@DefaultTask()
@Depends(lint, build)
void task() {}

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
