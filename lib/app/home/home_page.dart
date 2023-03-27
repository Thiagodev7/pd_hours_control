import 'package:flutter/material.dart';
import 'package:pd_hours_control/app/components/add_squad.dart';
import 'package:pd_hours_control/shared/configuration/app_colors.dart';

import '../../shared/configuration/responsive.dart';
import '../components/add_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return SafeArea(
          child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: ResponsiveWidget.isSmallScreen(context)
              ? AppBar(
                  backgroundColor: AppColor.gray1,
                  toolbarHeight: constraints.maxHeight * 0.15,
                  bottom: const TabBar(
                    tabs: <Widget>[
                      Tab(
                        icon: Text(
                          'Squads',
                          style: TextStyle(color: AppColor.black),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          'Ususarios',
                          style: TextStyle(color: AppColor.black),
                        ),
                      ),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.contain,
                        height: 32,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Pd Hours',
                          style: TextStyle(
                              fontFamily: 'rootBundle', color: AppColor.black),
                        ),
                      )
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AddUser(),
                        );
                      },
                      child: const Text('Lançar horas'),
                    ),
                  ],
                )
              : AppBar(
                  backgroundColor: AppColor.gray1,
                  toolbarHeight: constraints.maxHeight*0.15,
                  bottom: const TabBar(
                    tabs: <Widget>[
                      Tab(
                        icon: Text(
                          'Squads',
                          style: TextStyle(color: AppColor.black),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          'Ususarios',
                          style: TextStyle(color: AppColor.black),
                        ),
                      ),
                    ],
                  ),
                  flexibleSpace: Padding(
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
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AddUser(),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(AppColor.blue),
                          ),
                          child: const Text('Lançar horas'),
                        ),
                      ],
                    ),
                  ),
                ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/image_home1.png', scale: 1.3),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AddSquad(),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(AppColor.blue),
                          ),
                          child: const Text('Criar Squad'),
                        ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/image_home2.png', scale: 1.3),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AddUser(),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(AppColor.blue),
                          ),
                          child: const Text('Criar usuario'),
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
    });
  }
}
