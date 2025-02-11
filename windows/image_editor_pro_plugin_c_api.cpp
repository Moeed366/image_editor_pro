#include "include/image_editor_pro/image_editor_pro_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "image_editor_pro_plugin.h"

void ImageEditorProPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  image_editor_pro::ImageEditorProPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
