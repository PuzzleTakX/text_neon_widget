import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

enum NeonLevel { lowLevelNeon, highLevelNeon }
class PTTextNeonWidget extends StatefulWidget {
  final String text;
  final MaterialColor color;
  final String? font;
  final double? fontSize;
  final NeonLevel? levelNeon;
  final double? blurRadius;
  final int? lowAlpha;
  final int? highAlpha;
  final bool? shine;
  final double? strokeWidthTextLow;
  final double? strokeWidthTextHigh;
  final Color? backgroundColor;
  final Duration? shineDuration;
  final Duration? animatedChangeDuration;
  final TextStyle? textStyle;

  const PTTextNeonWidget(
      {Key? key,required this.text,required this.color,this.font, this.fontSize, this.levelNeon,
        this.backgroundColor,
        this.highAlpha,
        this.lowAlpha,
        this.animatedChangeDuration,
        this.strokeWidthTextLow,
        this.strokeWidthTextHigh,
        this.blurRadius, this.shine,this.shineDuration, this.textStyle,})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PTTextNeonWidgetState createState() => _PTTextNeonWidgetState();
}

class _PTTextNeonWidgetState extends State<PTTextNeonWidget> with TickerProviderStateMixin {
  AnimationController? _shadowController;

  String get text => widget.text;
  NeonLevel levelNeon = NeonLevel.highLevelNeon;
  MaterialColor get color => widget.color;
  TextStyle? get textStyle => widget.textStyle;
  late Timer timer ;
  bool hasTimer = false;

  @override
  void initState() {
    if(widget.levelNeon != null) levelNeon = widget.levelNeon!;
    _shadowController = AnimationController(
      duration: (widget.shineDuration == null) ? const Duration(milliseconds: 800) : widget.shineDuration,
      vsync: this,
    );
    hasTimer = true;
    initTimer();
    super.initState();
  }


  void initTimer(){
    timer = Timer.periodic((widget.animatedChangeDuration == null) ? const Duration(milliseconds: 2500) : widget.animatedChangeDuration!, (timer) {
      if(hasTimer){
        int r = Random().nextInt(2);
        if(r == 1){
          levelNeon = NeonLevel.lowLevelNeon;
        }else{
          levelNeon = NeonLevel.highLevelNeon;
        }
      }else{
        if(timer.isActive) timer.cancel();
      }
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(PTTextNeonWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_shine()) {
      _shadowController!.repeat(min: 0.2, max: 1, reverse: true);
    }
  }

  @override
  void dispose() {
    timer.cancel();
    _shadowController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: _shine()
            ? AnimatedBuilder(
          animation: _shadowController!,
          builder: (context, child) {
            var radius = _shadowController!.value * _blurRadius() * 1.5;
            return Stack(
              children: <Widget>[
                Text(text,
                    style: textStyle != null
                        ? textStyle!.copyWith(
                        shadows: _getShadows(levelNeon, radius))
                        : TextStyle(
                        fontFamily: (_font()),
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = _strokeWidthTextHigh()
                          ..color = _getLevelColor(levelNeon)!,
                        fontSize: _fontSize(),
                        shadows: _getShadows(levelNeon, radius))),
                Text(text,
                    style: textStyle != null
                        ? textStyle!.copyWith(
                        shadows: _getShadows(levelNeon, radius))
                        : TextStyle(
                        fontFamily: (_font()),
                        color: levelNeon == NeonLevel.highLevelNeon  ? _backgroundColor().withAlpha(_lowAlpha()) : _backgroundColor().withAlpha(_highAlpha()),
                        fontSize: _fontSize(),
                        shadows: _getShadows(levelNeon, radius)))
              ],
            );
          },
        )
            : Stack(
          children: <Widget>[
            Text(text,
                style: TextStyle(
                    fontFamily: (_font()),

                    fontSize: _fontSize(),
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = _strokeWidthTextLow()
                      ..color = _getLevelColor(levelNeon)!,
                    shadows: _getShadows(levelNeon, _blurRadius()))),
            Text(text,
                style: textStyle != null
                    ? textStyle!.copyWith()
                    : TextStyle(
                    fontFamily: (_font()),
                    color: levelNeon == NeonLevel.highLevelNeon  ? _backgroundColor().withAlpha(_lowAlpha()) : _backgroundColor().withAlpha(_highAlpha()),
                    fontSize: _fontSize(),
                    shadows: _getShadows(levelNeon, _blurRadius())))
          ],
        ));
  }



  /// check data add
  Color _backgroundColor(){
    return (widget.backgroundColor == null) ? Colors.black : widget.backgroundColor!;
  }
  int _lowAlpha(){
    return (widget.lowAlpha == null) ? 150 : widget.lowAlpha!;
  }
  int _highAlpha(){
    return (widget.highAlpha == null) ? 150 : widget.highAlpha!;
  }
  double _strokeWidthTextLow(){
    return (widget.strokeWidthTextLow == null) ? 150 : widget.strokeWidthTextLow!;
  }

  double _strokeWidthTextHigh(){
    return (widget.strokeWidthTextHigh == null) ? 150 : widget.strokeWidthTextHigh!;
  }
  String _font(){
    return (widget.font == null) ? "" : widget.font!;
  }
  double _fontSize(){
    return (widget.fontSize == null) ? 30 : widget.fontSize!;
  }
  double _blurRadius(){
    return (widget.blurRadius == null) ? 30 : widget.blurRadius!;
  }
  bool _shine(){
    return (widget.shine == null) ? true : widget.shine!;
  }





  List<Shadow> _getShadows(NeonLevel? levelNeon, double radius) {
    if (levelNeon == NeonLevel.lowLevelNeon) {
      return [
        Shadow(color: color[500]!, blurRadius: radius / 6),
      ];
    } else {
      return [
        Shadow(color: color[300]!, blurRadius: radius / 2),
        Shadow(color: color[400]!, blurRadius: radius),
        Shadow(color: color[500]!, blurRadius: radius * 3),
      ];
    }
  }

  Color? _getLevelColor(NeonLevel? levelNeon) {
    return levelNeon == NeonLevel.lowLevelNeon ? color[400]!.withAlpha(50) : color[100];
  }
}