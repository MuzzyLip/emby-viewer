import 'package:flutter/material.dart';

import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/app/theme/size_tokens.dart';

class AppInput extends StatefulWidget {
  final String? label;
  final String? placeholder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? password;
  final String? defaultValue;
  final TextEditingController? inputController;

  const AppInput({
    super.key,
    this.label,
    this.placeholder,
    this.suffixIcon,
    this.prefixIcon,
    this.password,
    this.defaultValue,
    this.inputController,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    if (widget.inputController != null && widget.defaultValue != null) {
      widget.inputController!.text = widget.defaultValue!;
    }
    _isObscure = widget.password ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorTokens;
    return Container(
      margin: EdgeInsets.only(bottom: AppSizeTokens.spacingXL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSizeTokens.spacingS,
        children: [
          if (widget.label != null)
            Text(
              widget.label!,
              style: TextStyle(
                fontSize: AppSizeTokens.titleM,
                fontWeight: FontWeight.bold,
                color: colors.fontLabel,
              ),
            ),
          TextField(
            controller: widget.inputController,
            style: TextStyle(color: colors.fontLabel),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                color: colors.fontPlaceholder,
                fontSize: AppSizeTokens.titleM,
              ),
              // Mark filled to set fillColor
              filled: true,
              fillColor: colors.inputBackground,
              prefixIcon: Padding(
                padding: EdgeInsets.all(16),
                child: widget.prefixIcon,
              ),
              suffixIcon: Padding(
                // Avoid extending to full height
                padding: EdgeInsets.all(widget.password == true ? 0 : 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: AppSizeTokens.spacingS,
                  children: [
                    if (widget.suffixIcon != null) widget.suffixIcon!,
                    if (widget.password == true)
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                          color: colors.fontLabel,
                          size: 24,
                        ),
                      ),
                  ],
                ),
              ),
              // Unfocused Status
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizeTokens.radiusL),
                borderSide: BorderSide(color: colors.border),
              ),
              // Focused Status
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizeTokens.radiusL),
                borderSide: BorderSide(color: colors.border),
              ),
            ),
            obscureText: _isObscure,
          ),
        ],
      ),
    );
  }
}
