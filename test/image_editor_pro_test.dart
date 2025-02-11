import 'package:flutter_test/flutter_test.dart';
import 'package:image_editor_pro/image_editor_pro.dart';
import 'package:image_editor_pro/image_editor_pro_platform_interface.dart';
import 'package:image_editor_pro/image_editor_pro_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockImageEditorProPlatform
    with MockPlatformInterfaceMixin
    implements ImageEditorProPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ImageEditorProPlatform initialPlatform = ImageEditorProPlatform.instance;

  test('$MethodChannelImageEditorPro is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelImageEditorPro>());
  });

  test('getPlatformVersion', () async {
    ImageEditorPro imageEditorProPlugin = ImageEditorPro();
    MockImageEditorProPlatform fakePlatform = MockImageEditorProPlatform();
    ImageEditorProPlatform.instance = fakePlatform;

    expect(await imageEditorProPlugin.getPlatformVersion(), '42');
  });
}
