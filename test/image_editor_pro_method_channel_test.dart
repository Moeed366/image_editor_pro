import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_editor_pro/image_editor_pro_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelImageEditorPro platform = MethodChannelImageEditorPro();
  const MethodChannel channel = MethodChannel('image_editor_pro');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
