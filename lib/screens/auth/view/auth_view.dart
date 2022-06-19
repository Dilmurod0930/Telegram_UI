import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/screens/auth/cubit/auth_cubit.dart';
import 'package:telegram_ui/screens/auth/state/auth_state.dart';

class AuthView extends StatelessWidget {
  AuthView({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController(text: '+1');
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(
              child: Text('Next'.tr()),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/cart',
                  (route) => false,
                );
              },
            ),
          ],
        ),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {},
          builder: (context, state) {
            controller.text = context.watch<AuthCubit>().phoneCityCode;
            return Column(
              children: [
                Text('Your_P'.tr(), style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 17),
                SizedBox(
                  height: 38,
                  width: 250,
                  child: Text('P_c_y_c_c_a_e_y_p_n'.tr()),
                ),
                const SizedBox(height: 45),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    value: context.watch<AuthCubit>().selectedLocation,
                    hint: Text(context.watch<AuthCubit>().selectedLocation),
                    onChanged: (v) => context.read<AuthCubit>().valueDrop(v!),
                    items: <String>['USA', 'RUS', 'UZB'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: TextField(
                        controller: controller,
                        onChanged: (v) {
                          context.read<AuthCubit>().phoneCityCode = v;
                          context.read<AuthCubit>().codeCity(v);
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: TextFormField(),
                    ),
                  ],
                ),
                const SizedBox(height: 24.5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sync_Contacts'.tr(),
                        style: MyTextStyleComp.myTextStyle(size: 17),
                      ),
                      CupertinoSwitch(
                        value: context.watch<AuthCubit>().syncCont,
                        onChanged: (v) {
                          context.read<AuthCubit>().syncContacts(v);
                        },
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
