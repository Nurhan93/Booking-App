import 'package:dio/dio.dart';
import 'package:hotel_booking_app/model/hotel_model.dart';
import 'package:retrofit/retrofit.dart';

part 'hotels.g.dart';

@RestApi(baseUrl: 'http://api.mahmoudtaha.com/api/hotels?count=10&page=1')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/enzoftware/hotel_booking_app/master/server/hotels.json')
  Future<List<Hotel>> getHotels();
}