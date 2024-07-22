import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../api/failuer.dart';
abstract class UseCase <Type,Param>{
  Future<Either<Failures,Type>> call(Param param);
}


class NoParam extends Equatable{
  @override
  List<Object?> get props => [];

}