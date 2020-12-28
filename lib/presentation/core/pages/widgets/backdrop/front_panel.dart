import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

class FrontPanel extends StatefulWidget {
  const FrontPanel(
      {Key key,
      @required this.backdropController,
      @required this.minFrontPanelHeight,
      @required this.childrenListSize,
      @required this.constraints,
      this.child,
      this.appPadding = EdgeInsets.zero,
      this.title = 'No Title',
      this.collapsedChild,
      @required this.isAdaptive})
      : super(key: key);

  final AnimationController backdropController;
  final BoxConstraints constraints;
  final double minFrontPanelHeight;
  final double childrenListSize;
  final EdgeInsets appPadding;
  final String title;
  final Widget child;
  final Widget collapsedChild;
  final bool isAdaptive;

  @override
  _FrontPanelState createState() => _FrontPanelState();
}

class _FrontPanelState extends State<FrontPanel> {
  bool isExpanded;
  bool isCollapsedMin;
  double currentSpacing;

  @override
  void initState() {
    super.initState();
    isExpanded = widget.backdropController.isCompleted;
    isCollapsedMin = isExpanded;
    currentSpacing = 0;
    widget.backdropController.addListener(() {
      setState(() {
        isExpanded = widget.backdropController.isCompleted ||
            widget.backdropController.isAnimating;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = widget.constraints.biggest.height;
    final colorScheme = Theme.of(context).colorScheme;
    return PositionedTransition(
      rect: getPanelAnimation(widget.constraints),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(widget.constraints.biggest.width *
              BackdropScaffold.appHorizontalPaddingRatio),
        ),
        child: Align(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: widget.appPadding,
            color: colorScheme.onBackground,
            child: IgnorePointer(
              ignoring: false,
              child: !isExpanded && isCollapsedMin
                  ? Align(child: widget.collapsedChild)
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(fontSize: FontValues.h4),
                        ),
                        const Divider(
                          color: Colors.transparent,
                        ),
                        Expanded(
                          child: widget.child,
                          //? Debug coloring
                          // child: Container(
                          //   decoration: BoxDecoration(
                          //     gradient: LinearGradient(
                          //       colors: [Colors.red, Colors.green, Colors.blue],
                          //       begin: Alignment.topCenter,
                          //       end: Alignment.bottomCenter,
                          //     ),
                          //   ),
                          //   child: widget.child,
                          // ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final double height = constraints.biggest.height;
    final double minHeight = widget.minFrontPanelHeight;
    setState(() {
      currentSpacing =
          min(widget.childrenListSize, height - widget.minFrontPanelHeight);
      isCollapsedMin = currentSpacing == height - widget.minFrontPanelHeight;
    });
    return RelativeRectTween(
      // begin: RelativeRect.fromLTRB(
      //     0, widget.childrenListSize, 0, frontPanelHeight),
      begin: RelativeRect.fromLTRB(
        0,
        currentSpacing,
        0,
        (!isExpanded && isCollapsedMin) || !widget.isAdaptive
            ? 0
            : -height + currentSpacing,
      ),
      end: const RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: widget.backdropController,
        curve: Curves.easeInCubic,
      ),
    );
  }
}
