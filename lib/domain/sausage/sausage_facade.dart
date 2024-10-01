import 'package:fpdart/fpdart.dart';
import 'package:greg_sausage_roll/domain/failure.dart';
import 'package:greg_sausage_roll/domain/network_response.dart';
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_string.dart';

abstract class SausageFacade {
  Stream<Either<Failure, List<SausageModel>>> getSausages();

  NetworkResponse<SausageModel> getSausage(String articleCode);

  NetworkResponse<Unit> addSausage(SausageModel sausage);

  NetworkResponse<Unit> updateSausage(SausageModel sausage);

  NetworkResponse<Unit> deleteSausage(Option<ValueString> articleCode);

  NetworkResponse<Unit> deleteAllSausages();

  NetworkResponse<Unit> deleteSausages(List<ValueString> articleCodes);
}
