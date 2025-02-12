#ifndef FLUTTER_PLUGIN_IMAGE_EDITOR_PRO_PLUGIN_H_
#define FLUTTER_PLUGIN_IMAGE_EDITOR_PRO_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace image_editor_pro {

class ImageEditorProPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ImageEditorProPlugin();

  virtual ~ImageEditorProPlugin();

  // Disallow copy and assign.
  ImageEditorProPlugin(const ImageEditorProPlugin&) = delete;
  ImageEditorProPlugin& operator=(const ImageEditorProPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace image_editor_pro

#endif  // FLUTTER_PLUGIN_IMAGE_EDITOR_PRO_PLUGIN_H_
