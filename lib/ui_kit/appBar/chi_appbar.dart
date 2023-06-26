import 'package:flutter/material.dart';
import '../../constants/chi_styles.dart';
import '../../themes/app_theme/chi_theme.dart';
import '../buttons/action_button.dart';
import 'package:provider/provider.dart';

//ignore: must_be_immutable
class CHIAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool addBackButton;
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? onBackPress;
  final bool search;
  final Color? color;
  final Widget? searchWidget;
  final bool showWelcome;
  const CHIAppBar({
    super.key,
    required this.title,
    this.actions,
    this.onBackPress,
    this.showWelcome = false,
    this.leading,
    this.addBackButton = true,
    this.search = false,
    this.searchWidget,
    this.color,
  });

  @override
  State<CHIAppBar> createState() => _CHIAppBarState();

  @override
  Size get preferredSize => const Size(64, 64);
}

class _CHIAppBarState extends State<CHIAppBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider value, child) => SafeArea(
        child: widget.search
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: widget.searchWidget ?? const SizedBox(),
              )
            : Container(
                color: widget.color,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.leading == null
                        ? widget.addBackButton
                            ? ActionButton(
                                icon: 'assets/icons/back.svg',
                                onTap: widget.onBackPress ??
                                    () => Navigator.pop(context),
                              )
                            : const SizedBox()
                        : widget.leading!,
                    widget.showWelcome
                        ? Expanded(
                            child: RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                    text: 'Welcome ',
                                    style: CHIStyles.smNormalStyle,
                                    children: [
                                      TextSpan(
                                        text: widget.title,
                                        style: CHIStyles.xlMediumStyle,
                                      )
                                    ])),
                          )
                        : Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: widget.title.length > 28 ? 8.0 : 0),
                              child: Text(widget.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: CHIStyles.xlMediumStyle),
                            ),
                          ),
                    Row(children: widget.actions ?? [const SizedBox()])
                  ],
                ),
              ),
      ),
    );
  }
}
