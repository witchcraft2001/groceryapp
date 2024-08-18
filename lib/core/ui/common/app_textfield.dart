// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'app_assets.dart';
import 'app_label.dart';

class AppTextField extends StatefulWidget {
  final String label;
  final String text;
  final String? hint;
  final String? subtitle;
  final void Function(String value) onChanged;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets? padding;
  final EdgeInsets? paddingLabel;
  final bool autofocus;
  final int? minLines;
  final int? maxLines;
  final TextEditingController? controller;

  const AppTextField({
    super.key,
    required this.label,
    required this.text,
    required this.onChanged,
    this.validator,
    this.hint,
    this.subtitle,
    this.padding,
    this.paddingLabel,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.sentences,
    this.focusNode,
    this.inputFormatters,
    this.autofocus = false,
    this.minLines,
    this.maxLines,
    this.controller,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    if (_controller.text != widget.text) {
      _controller.text = widget.text;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLabel(
            text: widget.label,
            padding: widget.paddingLabel,
          ),
          if (widget.subtitle != null && widget.subtitle!.isNotEmpty)
            _TlSubtitle(subtitle: widget.subtitle!),
          TextFormField(
            autofocus: widget.autofocus,
            style: context.appTheme?.text.w400s16cMain,
            controller: _controller,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            textCapitalization: widget.textCapitalization,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            validator: widget.validator,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              hintText: widget.hint ?? '',
              suffixIcon: _controller.text.isNotEmpty
                  ? Padding(
                      padding: AppSizes.p12,
                      child: InkWell(
                        onTap: () {
                          if (_controller.text.isNotEmpty) {
                            _controller.text = '';
                            widget.onChanged('');
                          }
                        },
                        child: SvgPicture.asset(AppAssets.iconClose),
                      ),
                    )
                  : null,
            ),
            minLines: widget.minLines,
            maxLines: widget.maxLines,
          ),
        ],
      ),
    );
  }
}

class _TlSubtitle extends StatelessWidget {
  final String subtitle;

  const _TlSubtitle({required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.pb4,
      child: Text(
        subtitle,
        style: context.appTheme?.text.w400s12cOptional,
      ),
    );
  }
}
