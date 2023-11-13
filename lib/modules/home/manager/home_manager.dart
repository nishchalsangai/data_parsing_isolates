import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:oonzoo/modules/home/model/college_model.dart';
import 'package:oonzoo/modules/home/repository/home_repository.dart';

class HomeManager extends ChangeNotifier {
  late bool isLoading;
  List<CollegeModel>? colleges;
  String? message;

  HomeManager() {
    isLoading = true;
    fetchAllCollegesDetails();
  }

  void fetchAllCollegesDetails() async {
    message = null;
    toggleLoading(true);
    final response = await HomeRepository.unitedStatesCollegeDetails();
    response.fold((failure) {
      message = failure;
      showToast(message ?? 'Refresh again');
      toggleLoading(false);
    }, (success) {
      colleges = [...success];
      toggleLoading(false);
    });
  }

  toggleLoading(bool val) {
    isLoading = val;
    notifyListeners();
  }
}
