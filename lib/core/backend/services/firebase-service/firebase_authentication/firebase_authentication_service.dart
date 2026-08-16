import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
     
     final FirebaseAuth _firebaseAuth;

     FirebaseAuthService(this._firebaseAuth);

    // Create User Account with Email and Password
     Future<UserCredential> createUserWithEmailAndPassword(String email,String password) async{
               
            return _firebaseAuth.createUserWithEmailAndPassword(
                email: email, 
                password: password
                );
     }
     
     //SignIn User with Email and Password
     Future<UserCredential> signInWithEmailAndPassword(String email,String password)async{

            return _firebaseAuth.signInWithEmailAndPassword(
              email: email, 
              password: password
              );
     }

     //SignOut User from Account
     Future<void> signOut(){
         return _firebaseAuth.signOut();
     }


     //Get Current User
     User? get currentUser => _firebaseAuth.currentUser;


    
    //Listen to User Auth Changes
    Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

}