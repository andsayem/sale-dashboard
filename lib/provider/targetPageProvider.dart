import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:dashboard/models/Target.dart';
import 'package:dashboard/api/api.dart';

class TargetPageProvider extends ChangeNotifier {
  Targets data;

  Future getData(context) async {
    var res = await CallApi().getData(
        'dashboard-summary-report.php?name=report&date=2018-01-01&to=2022-01-24&channel=Lighting&division=Barishal&token=1');
    var mJson = json.decode(res.body);
    this.data = Targets.fromJson(mJson);
    this.notifyListeners();
  }
}
