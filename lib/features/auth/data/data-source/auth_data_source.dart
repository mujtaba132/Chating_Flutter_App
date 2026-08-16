import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/backend/services/firebase_service/firebase_authentication/firebase_authentication_service.dart';

class AuthDataSource {
     
     final FirebaseAuthService _firebaseAuthService;

     AuthDataSource(this._firebaseAuthService);

     //Register the user
     Future<UserCredential> register(String email,String password){
             
             return _firebaseAuthService.createUserWithEmailAndPassword(email, password);
     }
     
     //Login to the already registered account
     Future<UserCredential> login(String email,String password){
            
            return _firebaseAuthService.signInWithEmailAndPassword(email, password);
     }

     //Logout from already registerd account
     Future<void> logout(){
          
          return _firebaseAuthService.signOut();
     }
     
}