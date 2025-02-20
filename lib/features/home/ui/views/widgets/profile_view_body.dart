import 'package:biocode/core/theming/colors.dart';
import 'package:biocode/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorsManager.mainBlue,
                  ColorsManager.mainBlue,
                  ColorsManager.mainBlue,
                  ColorsManager.mainBlue,
                ],
                stops: [0.0, 0.5, 0.5, 1.0],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.mainBlue,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xff7a85ad),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        S.of(context).userName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "KarimMotaz@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    color: ColorsManager.mainBlue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                    ),
                    
                  ),
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: 4),
                      child: Text(S.of(context).hello)),
                    Text(S.of(context).name),
                  ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
