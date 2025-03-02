/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high/core/router/go_routers.dart';
import 'package:sky_high/core/service_locator/service_locator.dart';
import 'package:sky_high/core/simple_bloc_observer/simple_bloc_observer.dart';
import 'package:sky_high/features/weather/data/repository/weather_repository_implementation.dart';
import 'package:sky_high/features/weather/presentation/managers/cubits/weather_cubit/weather_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //initial flutter frameWork
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  ); //just i want tab bar in the bottom
  serviceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const SkyHighApp());
}

class SkyHighApp extends StatelessWidget {
  const SkyHighApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => WeatherCubit(
            weatherRepositoryImplementation:
                getIt.get<WeatherRepositoryImplementation>(),
          ),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routerConfig: GoRouters.goRouter,
      ),
    );
  }
}
*/
