# ImageEditor

Image Editor Plugin with simple, easy support for image editing using Paints, Text, Filters, Emoji and Sticker like stories.


<img src="https://github.com/user-attachments/assets/d61da595-ad9e-4369-a825-53eb8e722b34" width="24%">
<img src="https://github.com/user-attachments/assets/c389fb5e-1229-4b89-aaa1-bb5ac247eb77" width="24%">
<img src="https://github.com/user-attachments/assets/ed6ba51a-2e4c-4bb3-b868-00868e6aa22f" width="24%">


To start with this, we need to simply add the dependencies in the gradle file of our app module like this

## Installation

First, add `image_editor_plus:` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

Import

```dart
import 'package:image_editor_pro/image_editor_pro.dart';
```

### iOS

Add the following keys to your _Info.plist_ file, located in `<project root>/ios/Runner/Info.plist`:

* `NSPhotoLibraryUsageDescription` - describe why your app needs permission for the photo library. This is called _Privacy - Photo Library Usage Description_ in the visual editor.
* `NSCameraUsageDescription` - describe why your app needs access to the camera. This is called _Privacy - Camera Usage Description_ in the visual editor.
* `NSMicrophoneUsageDescription` - describe why your app needs access to the microphone, if you intend to record videos. This is called _Privacy - Microphone Usage Description_ in the visual editor.

Or in text format add the key:

``` xml
<key>NSPhotoLibraryUsageDescription</key>
<string>Used to demonstrate image picker plugin</string>
<key>NSCameraUsageDescription</key>
<string>Used to demonstrate image picker plugin</string>
<key>NSMicrophoneUsageDescription</key>
<string>Used to capture audio for image picker plugin</string>
```

### Android

No configuration required - the plugin should work out of the box.


### Example - Language translation

```dart
// before using image editor
ImageEditor.i18n({
'Remove': '제거',
'Save': '저장',
'Slider Filter Color': '슬라이더 필터 색상',
});

```


### Example - Full Editor

```dart
final editedImage = await Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => ImageEditor(
            image: data, // <-- Uint8List of image
            appBarColor: Colors.blue,
            bottomBarColor: Colors.blue,
        ),
    ),
);
```


### Example - Image Crop Only

```dart
final editedImage = await Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => ImageCropper(
            image: data, // <-- Uint8List of image
        ),
    ),
);
```


### Example - Image Convert

```dart
import 'package:image_editor_pro/utils.dart';

// to jpeg
final convertedImage = await ImageUtils.convert(
    image: data, // <-- Uint8List/path of image
    format: 'jpg',
    quality: 80,
);

// to heic
final convertedImage = await ImageUtils.convert(
    image: data, // <-- Uint8List/path of image
    format: 'heic',
    quality: 80,
);

// to png
final convertedImage = await ImageUtils.convert(
    image: data, // <-- Uint8List/path of image
    format: 'png',
);

// to webp
final convertedImage = await ImageUtils.convert(
    image: data, // <-- Uint8List/path of image
    format: 'webp',
    quality: 80,
);
```

