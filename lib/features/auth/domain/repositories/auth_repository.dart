import 'package:blog_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure,String> >signupWithEmailPassword({ 
    required String email,
    required String name,
    required String Password

  }
   
  );
  Future<Either<Failure,String> >loginWithEmailPassword({ 
    required String email,
    required String name,
    required String Password
  }
   
  );


}