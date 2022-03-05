import 'package:flutter/material.dart';
import 'package:tetris_flutter_game/main.dart';
import 'package:tetris_flutter_game/panel/controller.dart';
import 'package:tetris_flutter_game/panel/screen.dart';

part 'page_land.dart';

class PagePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenW = size.width * 0.8;

    return SizedBox.expand(
      child: Container(
        color: BACKGROUND_COLOR,
        child: Padding(
          padding: MediaQuery.of(context).padding,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[Spacer(), RewardButton()],
              ),
              Spacer(),
              _ScreenDecoration(child: Screen(width: screenW)),
              Spacer(flex: 2),
              GameController(),
            ],
          ),
        ),
      ),
    );
  }
}

class RewardButton extends StatefulWidget {
  const RewardButton({
    Key? key,
  }) : super(key: key);

  @override
  _RewardButtonState createState() => _RewardButtonState();
}

class _RewardButtonState extends State<RewardButton> {
  final FocusNode _rewardFocusNode =
      FocusNode(canRequestFocus: false, skipTraversal: true);

  @override
  Widget build(BuildContext context) {
    return
      Container();
  }
}

class _ScreenDecoration extends StatelessWidget {
  final Widget child;

  const _ScreenDecoration({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              color: const Color(0xff3d4c33), width: SCREEN_BORDER_WIDTH),
          left: BorderSide(
              color: const Color(0xff62875c), width: SCREEN_BORDER_WIDTH),
          right: BorderSide(
              color: const Color(0xffa9d4b7), width: SCREEN_BORDER_WIDTH),
          bottom: BorderSide(
              color: const Color(0xffddfcdd), width: SCREEN_BORDER_WIDTH),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
        child: Container(
          padding: const EdgeInsets.all(3),
          color: SCREEN_BACKGROUND,
          child: child,
        ),
      ),
    );
  }
}
