import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:otp_creative_minds/injectable_container.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureInjection(String env) => getIt.init();