import 'package:either_dart/either.dart';

Either<String, List<String>> sendRequest(int x) {
  
  if (x == 1) {
    return const Right(['sdf', 'sdfsdf']);
  } else {
    return const Left('Tjhjkhh');
  }
}
