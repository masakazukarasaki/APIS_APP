import 'package:apis_app/models/base/base_model.dart';
import 'package:apis_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseBloc<T extends BaseModel> {
  final repository = Repository();
  final fetcher = PublishSubject<T>();

  dispose() {
    fetcher.close();
  }
}