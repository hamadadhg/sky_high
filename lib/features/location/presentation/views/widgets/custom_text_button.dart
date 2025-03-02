/*
// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sky_high/core/helpers/push_go_router_with_location_helper.dart';
import 'package:sky_high/core/helpers/snack_bar_helper.dart';
import 'package:sky_high/core/styles/style_to_colors.dart';
import 'package:sky_high/features/location/presentation/views/widgets/custom_text_location.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});
  Future<void> determinedLocation({required BuildContext context}) async {
    bool serviceEnabled;
    //to ensure(so check) GPS in phone user is work to give me location user
    LocationPermission permission;
    //to get on permission in determined location for user
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      snackBarHelper(
        context: context,
        text: 'Please Enabled to make your GPS location is work',
      );
      return;
      //sure you need to return because without return you will stay in this condition if the user don't enable you
    }
    permission = await Geolocator.checkPermission();
    //take permission to determine the location
    if (permission == LocationPermission.denied) {
      //if the permission is denied so
      permission = await Geolocator.requestPermission();
      //send another permission to take permission to determine the location
      if (permission == LocationPermission.denied) {
        //after send another permission, if the another permission is denied so
        snackBarHelper(
          context: context,
          text: 'You denied permission that will determine your location',
        );
        return;
        //sure you need to return because without return you will stay in this condition if the user denied ther permission to second time
      }
    }
    if (permission == LocationPermission.deniedForever) {
      //if the permission denied in second time so you should make the user go to his settings to enable the permission manually because this permission is required
      await Geolocator.openAppSettings();
      return;
      //sure you need to return because without return you will stay in this condition that make the user openSettings always
    }
    LocationSettings locationSettings = const LocationSettings(
      //get on current location for user(so city location for user)
      accuracy: LocationAccuracy.best, //use the best GPS site
      distanceFilter: 10,
      //when the user walk 10 meter so will happen trigger to LocationAccuracy to determined the site for user now
    );
    Position position = await Geolocator.getCurrentPosition(
      //get on position to get on latitude and longitude for this city, to get the api this two parameters instead of name
      locationSettings: locationSettings, //this ensure the accuracy is high
    );
    pushGoRouterWithLocationHelper(
      context: context,
      latitude: position.latitude, //this is like widthLine
      longitude: position.longitude, //this is like heightLine
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(size.width * 0.35, size.height * 0.25),
        //sure minimum not fixed because the screens in all phones not similar, so will the screen was big and you use fiexed so the button won't be bigger
        shape: const CircleBorder(),
        backgroundColor: StyleToColors.deepPurpleAccentColor,
      ),
      onPressed: () => determinedLocation(context: context),
      child: const CustomTextLocation(),
    );
  }
}
*/
