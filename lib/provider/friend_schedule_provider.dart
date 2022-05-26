import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:urooster/provider/auth_provider.dart';
import 'package:urooster/utils/constants.dart' as constants;
import 'package:http/http.dart' as http;

import '../model/group_detail_model.dart';

class FriendScheduleProvider with ChangeNotifier {
  AuthProvider? auth;

  var header = {"content-type": "application/json"};
  List<GroupDetail> groups = [];
  GroupDetail? currentGroup;

  FriendScheduleProvider update(AuthProvider auth) {
    this.auth = auth;
    header = {'content-type': 'application/json', constants.tokenHeaderName: auth.token};
    return this;
  }

  Future<void> getFriendGroup(int id) async {
    var response = await http.get(Uri.parse(constants.groupUrl+"/friend/"+id.toString()), headers: header);

    if(response.statusCode == 200) {
      checkToken(response);

      var body = jsonDecode(response.body)['response'];

      body.forEach((element){
        groups.add(GroupDetail.fromJson(element));
      });

      notifyListeners();

    }
    else
      print(response.body);

  }

  void clear() {
    groups = [];
    currentGroup = null;
  }

  void checkToken(http.Response response) {
    String? token = response.headers[constants.tokenHeaderName];

    if (auth?.token != token && token != null) {
      auth?.changeToken(token);
    }
  }

  void changeCurrentGroup(value) {
    currentGroup = value;
    notifyListeners();
  }
}