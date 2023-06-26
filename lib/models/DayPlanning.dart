import 'package:flutter/material.dart';

import 'PartOfDay.dart';

class DayPlanning{

  String? name;
  String? date;
  late List<PartOfDay> planning;

  DayPlanning(this.name, this.date, this.planning);
}