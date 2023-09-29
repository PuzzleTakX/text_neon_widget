# PuzzleTak Neon Widget  (1.0.0)

NavigationView is a Flutter package that provides a navigation component with customizable
colors and icons. It allows you to easily create a navigation bar with animated transitions between
different pages.
by most animation flutter

## Demo new

<img src="https://github.com/PuzzleTakX/puzzletak_neon_widget /blob/master/demo/3.gif?raw=true" alt="image_demo" width="300" height="700">

## Installation ☺

To use the NavigationView package, add the following dependency to your `pubspec.yaml`
file:


```yaml
dependencies: 
puzzletak_neon_widget : ^1.0.0
```
Then, run `flutter pub get` to fetch the package.

## Usage

Import the package in your Dart file:

```dart
import 'package:puzzletak_neon_widget /puzzletak_neon_widget .dart';
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

This code seems to be an example of using the PTTextNeon widget in Flutter. Here's an explanation of its properties:

    text: The text you want to display with neon animation (in this case, "F l u t t e r ").
    color: The color of the neon glow (light blue in this case).
    font: The font style to use ("five" in this case, which is likely a custom font).
    shine: A boolean flag indicating whether the neon effect should shine (true in this case).
    fontSize: The font size (40 in this case).
    strokeWidthTextHigh: The width of the neon glow for the text when it's highly illuminated (3 in this case).
    blurRadius: The amount of blur applied to the neon glow (25 in this case).
    strokeWidthTextLow: The width of the neon glow for the text when it's less illuminated (1 in this case).
    backgroundColor: The background color behind the neon text (black in this case).

This code appears to be creating a neon text effect in a Flutter app using the PTTextNeon widget with customizable properties.

For more detailed information and usage instructions, you should refer to the README file on GitHub associated with this Flutter library or widget.

## Example

For a complete example of using the NavigationView package, refer to
the [example](https://github.com/PuzzleTakX/puzzletak_neon_widget /tree/master/example) provided.

## License

This package is released under the MIT License. See the [LICENSE](https://github.com/PuzzleTakX/puzzletak_neon_widget /blob/master/LICENSE)
file for more details.

## Credits

NavigationView is developed and maintained by [puzzleTak](https://github.com/PuzzleTakX).