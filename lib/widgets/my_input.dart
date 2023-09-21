import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Sizes { sm, md }

Map sizes = {Sizes.sm: 40, Sizes.md: 75};

class MyInput extends StatefulWidget {
  const MyInput({
    super.key,
    this.placeholder = "Placeholder",
    this.label = "Label",
    this.helperText,
    this.startIcon,
    this.endIcon,
    this.size = Sizes.md,
    this.fullWidth = false,
    this.rows = 1,
    this.error = false,
    this.disabled = false,
    this.value,
  });

  final String placeholder;
  final String? value;
  final String label;
  final String? helperText;
  final IconData? startIcon;
  final IconData? endIcon;
  final Sizes size;
  final bool fullWidth;
  final int rows;
  final bool error;
  final bool disabled;

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  bool isHover = false;
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: widget.value);
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Label',
            style: GoogleFonts.notoSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: widget.error ? (isFocused ? Color(0xffD32F2F) : (isHover ? Color(0xff333333) : Color(0xffD32F2F))) : (isFocused ? Color(0xff2962FF) : Color(0xff333333)))),
        SizedBox(height: 4),
        Container(
            width: widget.fullWidth ? 1450 : 200,
            height: (sizes[widget.size] * widget.rows),
            child: MouseRegion(
              onHover: (event) {
                setState(() {
                  isHover = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHover = false;
                });
              },
              child: TextField(
                enabled: !widget.disabled,
                maxLines: widget.rows,
                controller: controller,
                style: TextStyle(color: Color(0xff333333), fontSize: 14, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    hintText: widget.placeholder,
                    helperText: widget.helperText,
                    helperStyle: GoogleFonts.notoSans(color: widget.error ? Color(0xffD32F2F) : Color(0xff828282)),
                    focusColor: Color(0xff2962FF),
                    fillColor: Color(0xffF2F2F2),
                    filled: widget.disabled,
                    prefixIcon: widget.startIcon != null ? Icon(widget.startIcon) : null,
                    suffixIcon: widget.endIcon != null ? Icon(widget.endIcon) : null,
                    hintStyle: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.w500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: isHover ? Color(0xff333333) : (widget.error ? Color(0xffD32F2F) : Color(0xff828282)))),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: widget.error ? Color(0xffD32F2F) : Color(0xff2962FF))),
                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Color(0xffE0E0E0)))),
                onTap: () {
                  setState(() {
                    isFocused = true;
                  });
                },
                onTapOutside: (event) {
                  setState(() {
                    isFocused = false;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                cursorColor: Color(0xff2962FF),
              ),
            )),
      ],
    );
  }
}
