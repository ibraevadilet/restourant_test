import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restaurants_test/components/app_error_text.dart';
import 'package:restaurants_test/components/app_indicator.dart';
import 'package:restaurants_test/components/custom_finder_text_field.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/features/main/presentation/main/bloc/get_all_restourants_cubit/get_all_restourants_cubit.dart';
import 'package:restaurants_test/features/map/presentation/map_page/widgets/get_bytes_from_asset.dart';
import 'package:restaurants_test/features/map/presentation/map_page/widgets/get_local_positin.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'dart:typed_data';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController googleMapController;
  Set<Marker> markers = {};
  CameraPosition initialCameraPosition =
      const CameraPosition(target: LatLng(42.882004, 74.582748), zoom: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocConsumer<GetAllRestourantsCubit, GetAllRestourantsState>(
            listener: (context, state) =>
                state.whenOrNull(successPositin: (model) {
              if (model.isNotEmpty) {
                initialCameraPosition = CameraPosition(
                    target: LatLng(model.first.position.latitude,
                        model.first.position.longitude),
                    zoom: 14);
              }
              markers.clear();
              markers.addAll(model);
              return null;
            }),
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => const AppIndicator(),
                  error: (error) => AppErrorText(
                        text: error.message,
                        onPress: () => context
                            .read<GetAllRestourantsCubit>()
                            .getRestsPositin(),
                      ),
                  successPositin: (model) => GoogleMap(
                        initialCameraPosition: initialCameraPosition,
                        markers: markers,
                        zoomControlsEnabled: true,
                        mapType: MapType.normal,
                        onMapCreated: (GoogleMapController controller) {
                          googleMapController = controller;
                        },
                      ));
            },
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FinderTextField(
                  onFieldSubmitted: (value) => context
                      .read<GetAllRestourantsCubit>()
                      .getRestsPositin(keyword: value),
                  isFilled: true,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.colorWhite,
        child: SvgPicture.asset(AppImages.geoIcon),
        onPressed: () async {
          Position position = await getLocalPositin();
          final Uint8List customMarker =
              await getBytesFromAsset(path: AppImages.myGeoIcon, width: 50);

          googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(position.latitude, position.longitude),
                  zoom: 14),
            ),
          );
          markers.clear();
          markers.add(
            Marker(
              markerId: const MarkerId('myLocation'),
              icon: BitmapDescriptor.fromBytes(customMarker),
              infoWindow: const InfoWindow(
                title: 'Мое местоположение',
                snippet: 'address',
              ),
              position: LatLng(position.latitude, position.longitude),
            ),
          );

          setState(() {
            print('markers - $markers');
          });
        },
      ),
    );
  }
}
