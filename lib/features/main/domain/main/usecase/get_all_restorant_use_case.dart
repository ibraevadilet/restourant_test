import 'dart:typed_data';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/features/main/domain/main/entity/all_restourant_entity.dart';
import 'package:restaurants_test/features/main/domain/main/repository/get_all_restourants_repo.dart';
import 'package:restaurants_test/features/map/presentation/map_page/widgets/get_bytes_from_asset.dart';

class AllRestourantUseCase {
  AllRestourantUseCase({required this.repo});
  final GetAllRestourantRepo repo;

  Future<List<AllRestourantEntity>> getAllRest({String? keyword}) async {
    return await repo.getRest(keyword: keyword);
  }

  Future<List<AllRestourantEntity>> getFavoriteRest() async {
    List<AllRestourantEntity> favorites = [];
    final response = await repo.getRest();
    response.map<AllRestourantEntity>(
      (e) {
        if (e.isFavorite) {
          favorites.add(e);
        }
        return e;
      },
    ).toList();

    return favorites;
  }

  Future<Set<Marker>> getRestPosition({String? keyword}) async {
    final response = await repo.getRest(keyword: keyword);
    final Uint8List customMarker =
        await getBytesFromAsset(path: AppImages.restourantsGeoIcon, width: 100);

    Set<Marker> markers = {};

    response.map<AllRestourantEntity>(
      (e) {
        markers.add(Marker(
            markerId: const MarkerId('restLocaction'),
            icon: BitmapDescriptor.fromBytes(customMarker),
            infoWindow: InfoWindow(
              title: e.title,
              snippet: e.adress,
            ),
            position: LatLng(e.latitude, e.longitude)));
        return e;
      },
    ).toList();

    return markers;
  }
}
