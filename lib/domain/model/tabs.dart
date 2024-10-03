import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TabModel extends Equatable {
  final Widget name;
  const TabModel({required this.name});

  @override
  List<Object?> get props => [name];
}
