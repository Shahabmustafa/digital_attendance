import 'package:flutter/cupertino.dart';

class LoadingButtonProvider extends ChangeNotifier{

  bool _loading = false;

  bool get loading => _loading;

  addLoading(bool value){
    _loading = value;
    notifyListeners();
  }
}