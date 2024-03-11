import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class StrictSavingsModel extends Equatable {
  final String mainTitle;
  final String subtitle;
  final String buttonTitle;
  final String image;

  const StrictSavingsModel({
    required this.mainTitle,
    required this.subtitle,
    required this.buttonTitle,
    required this.image,
  });

  @override
  List<Object> get props => [mainTitle, subtitle, buttonTitle, image];
}