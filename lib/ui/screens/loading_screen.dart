import 'package:clone_netflix/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../repositories/data_repository.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}
@override
void initState() {
  
}
Future<void> initData() async{
  //final dataProvider = Provider.of<DataRepository>(context, listen: false);
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo_1.jpg"),
          SpinKitFadingCircle(
           color: bbwBackgroundColor,
           size:50,
          )
        ],
      ),
    );
  }
}
