import 'package:dio/dio.dart';
import 'package:neyyar_test/presentation/models/course.dart';

import '../constants/app_urls.dart';

class HomeRepository {
  final dio = Dio();
  Future getData() async {
    try {
      final response = await dio.get(AppUrl.movieUrl);
      // List dummyData =
      //     (response.data as List).map((x) => Movie.fromJson(x)).toList();
      // using asset hard data here only if the api succeded
      List<Course> data = (dummyData).map((x) => Course.fromJson(x)).toList();
      // print(data);
      return data;
    } catch (e) {
      rethrow;
    }
  }
}

final dummyData = [
  {
    "course_name": "Certificate in word processing & Data entry console",
    "is_premium": true,
    "is_live": false,
    "percentage": 40,
    "rating": 3,
    "total_review": 230
  },
  {
    "course_name": "Bachelor of technology in Electronics and Communcation",
    "is_premium": false,
    "is_live": true,
    "percentage": 70,
    "rating": 5,
    "total_review": 39
  },
  {
    "course_name": "Masters in Electronics and Communcation",
    "is_premium": true,
    "is_live": true,
    "percentage": 10,
    "rating": 1,
    "total_review": 33
  },
  {
    "course_name": "Certificate in word processing & Data entry console",
    "is_premium": true,
    "is_live": false,
    "percentage": 40,
    "rating": 2,
    "total_review": 32
  },
  {
    "course_name": "Bachelor of technology in Electronics and Communcation",
    "is_premium": false,
    "is_live": true,
    "percentage": 70,
    "rating": 5,
    "total_review": 100
  },
  {
    "course_name": "Masters in Electronics and Communcation",
    "is_premium": true,
    "is_live": true,
    "percentage": 10,
    "rating": 1,
    "total_review": 67
  }
];
