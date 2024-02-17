import 'dart:convert' as convert;

import 'package:flutter/services.dart';
import 'package:flutter_stephenking/models/libros_readfile.dart';


class _LibrosReadFile{
  
  Future<List<Libros>> getlibros() async {
    final _dataAssetBundle = await rootBundle.loadString('libros_data.json');
    List<dynamic> _equiposListJson = convert.jsonDecode(_dataAssetBundle);
    return _equiposListJson.map((e) => Libros.fromJson(e)).toList();
  }



}


final LibrosReadFile = _LibrosReadFile();