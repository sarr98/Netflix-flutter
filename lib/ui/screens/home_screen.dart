import 'package:clone_netflix/repositories/data_repository.dart';
import 'package:clone_netflix/services/api_service.dart';
import 'package:clone_netflix/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../models/movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie>? movies;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataRepository>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset("assets/image/Logo.png"),
      ),
      body: ListView(
        children: [
          Container(
            height: 565 ,
            color: Colors.red,
            child: dataProvider.popularMovieList.isEmpty
                ? const Center(
              child: Text("Insdisponibilité du film"),
            ): Image.network(dataProvider.popularMovieList![0].posterUrl(), fit: BoxFit.cover,)
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Tendances Actuelles",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
          const SizedBox(
            height: 5,
          ),

           SizedBox(
            height: 187.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index) => Container(
                width: 125,
                margin:  const EdgeInsets.only(right: 10),
                color: Colors.amber,
                child:dataProvider.popularMovieList.isEmpty
                    ? const Center(
              child: Text("Insdisponibilité du film"),
            ): Image.network(dataProvider.popularMovieList[index].posterUrl(), fit: BoxFit.cover,),
                )
                ),
            ),

          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Actuellement au cinéma",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
          const SizedBox(
            height: 5,
          ),

           SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index) => Container(
                width: 200,
                margin:  const EdgeInsets.only(right: 10),
                color: Colors.amber,
                child: movies==null
                    ? const Center(
              child: Text("Insdisponibilité du film"),
            ): Image.network(movies![0].posterUrl(), fit: BoxFit.cover,),
                )
                ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Ils arrivent bientôt",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
          const SizedBox(
            height: 5,
          ),

           SizedBox(
            height: 187.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index) => Container(
                width: 125,
                margin:  const EdgeInsets.only(right: 10),
                color: Colors.amber,
                child: movies==null ? const Center(
              child: Text("Insdisponibilité du film"),
            ): Image.network(movies![0].posterUrl(), fit: BoxFit.cover,),
                )
                ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Animation",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
          const SizedBox(
            height: 5,
          ),

           SizedBox(
            height: 187.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index) => Container(
                width: 125,
                margin:  const EdgeInsets.only(right: 10),
                color: Colors.amber,
                child: movies==null ? const Center(
              child: Text("Insdisponibilité du film"),
            ): Image.network(movies![0].posterUrl(), fit: BoxFit.cover,),
                )
                ),
            ),
          )
        ],
      ),
    );
  }
}