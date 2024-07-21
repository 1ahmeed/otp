import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:otp_creative_minds/features/otp/domain/models/verify_otp_model.dart';
import 'package:otp_creative_minds/features/otp/presentation/widgets/app_bar.dart';

import '../widgets/build_item_of_info_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.verifyOtpModel});
final VerifyOtpModel? verifyOtpModel;
  @override
  Widget build(BuildContext context) {
    var model= verifyOtpModel!.data!.profile!;
    return Scaffold(
      appBar: buildAppBar(context),
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 500,),
            const SizedBox(
              height: 20,
            ),
            ///images
            // CircleAvatar(
            //   radius: 70,
            //   // backgroundImage: NetworkImage(
            //   //   model.image!, scale: .1),
            //   child:
            // ),
            Image.network(  model.image!,width: 100,height: 100,),
            const SizedBox(
              height: 50,
            ),
            ///name
            BuildItemOfInfoProfile(title: model.name!, icon: Icons.person),
            const SizedBox(
              height: 20,
            ),
            ///email
            BuildItemOfInfoProfile(title: model.email!, icon:  Icons.email,),
            const SizedBox(
              height: 20,
            ),
            ///user nationality
            BuildItemOfInfoProfile(title: model.userNationality??"", icon:   IconlyLight.paper_negative),
            const SizedBox(
              height: 20,
            ),
            ///birth day
            BuildItemOfInfoProfile(title: model.birthdate!, icon:FontAwesomeIcons.cakeCandles,),
            const SizedBox(
              height: 20,
            ),
            ///phone
            BuildItemOfInfoProfile(title: model.phone!, icon:Icons.phone),
            const SizedBox(
              height: 20,
            ),
            ///country name
            BuildItemOfInfoProfile(title: model.countryName??"", icon:FontAwesomeIcons.globe,),
          ],
        ),
      ),
    );
  }
}

