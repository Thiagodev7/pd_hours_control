import 'package:flutter/material.dart';

import '../configuration/app_colors.dart';

class CustomTextField extends StatefulWidget {
  String text;
  String hintText;

  CustomTextField({required this.hintText, required this.text, super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
    late TextEditingController textController;
  late FocusNode textFocusNode;




  String? loginStatus;
  Color loginStringColor = Colors.green;

   @override
  void initState() {
    textController = TextEditingController();
    textController.text = '';
    textFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    bottom: 8,
                  ),
                  child: Text(
                    widget.text,
                     textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: AppColor.gray3,
                      // fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: TextField(
                    focusNode: textFocusNode,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: textController,
                    obscureText: true,
                    autofocus: false,
                    onChanged: (value) {
                     
                    },
                    onSubmitted: (value) {
                      
                    },
                  style: const TextStyle(color: AppColor.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: AppColor.gray2,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(
                        color: AppColor.gray2,
                      ),
                      hintText: widget.hintText,
                      fillColor: Colors.white,
                      errorStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
      ],
    );
  }
}