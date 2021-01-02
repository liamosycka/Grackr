import 'package:flutter/material.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/front_panel.dart';

import 'backdrop_transitions.dart';

class BackdropScaffold extends StatefulWidget {
  static const double appHorizontalPaddingRatio = 1 / 16;
  static const double appVerticalPaddingRatio = 1 / 64;
  static double childrenExtent = (BackdropBar.height - 25).abs();
  static double childrenMargin = BackdropBar.height * 0.2;
  static double minFrontPanelHeight = BackdropBar.height.abs();

  const BackdropScaffold({
    Key key,
    @required this.backdropBar,
    @required this.children,
    this.backdropController,
    @required this.frontPanelChild,
    this.frontPanelTitle = 'No Title',
    this.frontPanelCollapsedChild,
    this.backdropControllerValue,
    this.isAdaptiveFrontPanel = false,
    this.frontActionChild,
  })  : assert(frontPanelChild != null),
        assert(
            (backdropController == null) || (backdropControllerValue == null)),
        super(key: key);

  final BackdropBar backdropBar;
  final List<BackdropChild> children;
  final AnimationController backdropController;
  final double backdropControllerValue;
  final String frontPanelTitle;
  final Widget frontPanelChild;
  final Widget frontPanelCollapsedChild;
  final bool isAdaptiveFrontPanel;
  final Widget frontActionChild;

  @override
  _BackdropScaffoldState createState() => _BackdropScaffoldState();
}

class _BackdropScaffoldState extends State<BackdropScaffold>
    with SingleTickerProviderStateMixin {
  AnimationController backdropController;
  bool backdropControllerOverriden;
  @override
  void initState() {
    super.initState();
    backdropControllerOverriden = widget.backdropController != null;
    backdropController = widget.backdropController ??
        AnimationController(
          vsync: this,
          duration: const Duration(seconds: 1),
          value: widget.backdropControllerValue ?? 1,
        );
  }

  @override
  void dispose() {
    if (!backdropControllerOverriden) backdropController.dispose();
    super.dispose();
  }

  bool get isPanelVisible {
    //? Se considera que el panel esta visible cuando la animacion esta completa
    //? o cuando se está completando
    final AnimationStatus status = backdropController.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final childrenListSize = widget.children.length *
        (BackdropScaffold.childrenExtent + BackdropScaffold.childrenMargin);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final childrenListMaxSize = constraints.biggest.height -
                BackdropScaffold.minFrontPanelHeight -
                BackdropBar.height;
            return Column(
              children: [
                BackdropOpacityTransition(
                  child: BackdropBar(
                    appPadding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth *
                          BackdropScaffold.appHorizontalPaddingRatio,
                      vertical: constraints.maxHeight *
                          BackdropScaffold.appVerticalPaddingRatio,
                    ),
                    title: widget.backdropBar.title,
                    leadingIcon: widget.backdropBar.leadingIcon,
                    leadingOnTap: widget.backdropBar.leadingOnTap,
                    actionIcon: widget.backdropBar.actionIcon,
                    actionOnTap: widget.backdropBar.actionOnTap,
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      BackdropOpacityTransition(
                        child: Container(
                          // color: colorScheme.primary,
                          constraints:
                              BoxConstraints(maxHeight: childrenListMaxSize),
                          color: colorScheme.background,
                          child: ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(
                              horizontal: constraints.maxWidth *
                                  BackdropScaffold.appHorizontalPaddingRatio,
                            ),
                            itemBuilder: (context, index) => Container(
                              height: BackdropScaffold.childrenExtent,
                              margin: EdgeInsets.only(
                                  bottom: BackdropScaffold.childrenMargin),
                              child: widget.children[index],
                            ),
                            itemCount: widget.children.length,
                            itemExtent: BackdropScaffold.childrenExtent +
                                BackdropScaffold.childrenMargin,
                          ),
                        ),
                      ),
                      FrontPanel(
                        title: widget.frontPanelTitle,
                        constraints: constraints.copyWith(
                          maxHeight: constraints.maxHeight - BackdropBar.height,
                        ),
                        childrenListSize: childrenListSize,
                        minFrontPanelHeight:
                            BackdropScaffold.minFrontPanelHeight,
                        backdropController: backdropController,
                        appPadding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth *
                              BackdropScaffold.appHorizontalPaddingRatio,
                          vertical: constraints.maxHeight *
                              BackdropScaffold.appVerticalPaddingRatio,
                        ),
                        collapsedChild: widget.frontPanelCollapsedChild,
                        child: widget.frontPanelChild,
                        isAdaptive: widget.isAdaptiveFrontPanel,
                      ),
                      _FrontAction(
                        frontActionChild: widget.frontActionChild,
                        constraints: constraints,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _FrontAction extends StatelessWidget {
  const _FrontAction({
    Key key,
    @required this.frontActionChild,
    @required this.constraints,
  }) : super(key: key);

  final Widget frontActionChild;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: constraints.biggest.height *
              BackdropScaffold.appHorizontalPaddingRatio,
        ),
        child: frontActionChild,
      ),
    );
  }
}
