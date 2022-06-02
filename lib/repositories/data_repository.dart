import 'package:clone_netflix/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/movie.dart';

class DataRepository with ChangeNotifier{
 final ApiService apiService = ApiService();
 //private
  final List<Movie> _popularMovieList = [];
  int _popularMovieIndex = 1;
 List<Movie> get popularMovieList => _popularMovieList;
  Future <void> getPopularMovies() async{
   try{
     List<Movie> movies = await apiService.getPopularMovies(pageNumber: _popularMovieIndex);
     _popularMovieList.addAll(movies);
     _popularMovieIndex++;
     notifyListeners();
   }on Response catch(response){
     print("Erreur ${response.statusCode}");
     rethrow;
   }
 }
 Future<void> initData() async{
    await getPopularMovies();
 }
}