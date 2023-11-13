// import 'dart:convert';

import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
import 'package:oonzoo/modules/home/model/college_model.dart';
import 'package:oonzoo/services/isolate_parser.dart';
import 'package:oonzoo/services/network_service.dart';
import 'package:oonzoo/utils/end_points.dart';

class HomeRepository {
  HomeRepository._();

  static Future<Either<String, List<CollegeModel>>> unitedStatesCollegeDetails() async {
    try {
      final response = await NetworkService.get(url: EndPoints.unitedStates);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final isolateParse = IsolateParser<List<CollegeModel>>(
          response.body,
          collegeModelFromJson,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      } else {
        return const Left('Failed to get');
      }
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
