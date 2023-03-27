import 'package:flutter/material.dart';
import 'package:pd_hours_control/shared/configuration/app_colors.dart';
import 'package:pd_hours_control/shared/widgets/custom_text_field.dart';



class AddSquad extends StatefulWidget {
  @override
  _AddSquadState createState() => _AddSquadState();
}

class _AddSquadState extends State<AddSquad> { 

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.gray1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 400,
            color: AppColor.gray1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // ignore: prefer_const_constructors
                Center(
                  child: const Text(
                    'Criuar Squad',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                CustomTextField(hintText: 'Digite o nome da squad', text: 'Nome da squad'),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  AppColor.blue),
                            ),
                            child: const Text('Criar Squad'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
