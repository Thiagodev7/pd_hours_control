import 'package:flutter/material.dart';
import 'package:pd_hours_control/shared/configuration/app_colors.dart';

import '../../shared/configuration/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return SafeArea(
          child: Scaffold(
            appBar:ResponsiveWidget.isLargeScreen(context)
          ?AppBar(     
              backgroundColor: AppColor.gray1,
              toolbarHeight: constraints.maxHeight*0.25,   
              flexibleSpace:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/logo.png'),
                        const SizedBox(height: 20),
                        const Text(
                          'Pd Hours',
                          style: TextStyle(
                            fontFamily: 'rootBundle',
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(AppColor.blue),
                      ),
                      child: const Text('Lançar horas'),
                    ),
                  ],
                ),
              ),): AppBar()
          ),
        );
      }
    );
  }
}
