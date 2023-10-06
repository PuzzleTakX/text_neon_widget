# Text Neon Widget (1.0.0)

[![pub package](https://img.shields.io/pub/v/text_neon_widget.svg)](https://pub.dev/packages/text_neon_widget)
[![pub points](https://img.shields.io/pub/points/text_neon_widget?color=2E8B57&label=pub%20points)](https://pub.dev/packages/text_neon_widget/score)




A Neon widget for Flutter: With this widget,
you can bring all your text to life with neon animations, and all elements are customizable,
allowing you to personalize them as you like.
For support, please follow me.

## Demo new

<div style="display: flex; flex-direction: row;">
  <img src="https://github.com/PuzzleTakX/text_neon_widget/blob/master/demo/1.jpg?raw=true" alt="image_demo" width="300" height="700">

  <img src="https://github.com/PuzzleTakX/text_neon_widget/blob/master/demo/2.jpg?raw=true" alt="second_image" width="300" height="700">
</div>


<img src="https://github.com/PuzzleTakX/text_neon_widget/blob/master/demo/4.gif?raw=true" alt="image_demo" width="300" height="700">

## Installation ☺

To use the NavigationView package, add the following dependency to your `pubspec.yaml`
file:

[![pub package](https://img.shields.io/pub/v/text_neon_widget.svg)](https://pub.dev/packages/text_neon_widget)
```yaml
dependencies:
text_neon_widget : ^1.0.5
```
Then, run `flutter pub get` to fetch the package.

## Usage

Import the package in your Dart file:

```dart
import 'package:text_neon_widget/text_neon_widget.dart';
```

Create a `PTTextNeon` widget and provide the necessary parameters:

```dart
     Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
            PTTextNeon(text: 'F l u t t e r ',color: Colors.lightBlue,
            font: "five",shine: true,fontSize: 40,
            strokeWidthTextHigh: 3,blurRadius: 25,
            strokeWidthTextLow: 1,backgroundColor: Colors.black,),
            
            PTTextNeon(text: ' & ',color: Colors.deepPurple,
            font: "five",shine: true,fontSize: 25,
            strokeWidthTextHigh: 3,blurRadius: 25,
            strokeWidthTextLow: 1,backgroundColor: Colors.black,),
            
            PTTextNeon(text: ' D a r t',color: Colors.teal,
            shine: true,fontSize: 40,
            font: "five",strokeWidthTextHigh: 3,blurRadius: 20,
            strokeWidthTextLow: 1,backgroundColor: Colors.black,),
        ],
    )
```

In the above code, the `text` parameter specifies the text to be displayed. The `color` parameter sets the color of the neon glow effect. The `font` parameter allows you to specify the font for the text.

You can enable or disable the shine effect using the `shine` parameter. The `fontSize` parameter controls the size of the text. The `strokeWidthTextHigh` and `strokeWidthTextLow` parameters define the stroke width of the text in the high and low intensity areas respectively.

The `blurRadius` parameter sets the blur radius of the neon glow effect. The `backgroundColor` parameter sets the background color of the text.

Feel free to experiment with different values for the parameters to achieve the desired neon text effect.

```dart
     PTTextNeon PTTextNeon({
      required String text,
      required MaterialColor color,
      String? font,
      double? fontSize,
      NeonLevel? levelNeon,
      Color? backgroundColor,
      int? highAlpha,
      int? lowAlpha,
      Duration? animatedChangeDuration,
      double? strokeWidthTextLow,
      double? strokeWidthTextHigh,
      double? blurRadius,
      bool? shine,
      Duration? shineDuration,
      TextStyle? textStyle, }) 
```

## Example

For a complete example of using the NavigationView package, refer to
the [example](https://github.com/PuzzleTakX/text_neon_widget/tree/master/example) provided.

## License

This package is released under the MIT License. See the [LICENSE](https://github.com/PuzzleTakX/text_neon_widget/blob/master/LICENSE)
file for more details.

## Credits

NavigationView is developed and maintained by [puzzleTak](https://github.com/PuzzleTakX).