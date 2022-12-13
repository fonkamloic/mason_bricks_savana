import 'package:dartz/dartz.dart';


abstract class IEntityFacade {
  Future<Either<EntityFailure, Unit>> signIn();
  Future<Option<Entity>> getSignedInEntity();
  Future<void> signOut();
}
