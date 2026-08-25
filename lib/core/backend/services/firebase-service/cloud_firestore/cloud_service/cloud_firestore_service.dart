import 'package:chat_app/dependencies/service-loader/file_exports.dart';

abstract interface class CloudFirestoreService {
       
       
       //Get reference of single document 
       DocumentReference<Map<String,dynamic>> getDocumentRef({
           required String collection,
           required String documentId,
       });


       //Get reference of single collection
      CollectionReference<Map<String,dynamic>> getCollectionRef({
          required String collection,
      });  

      
       //Get reference of nested document 
       DocumentReference<Map<String,dynamic>> getNestedDocumentRef({
           required DocumentReference<Map<String,dynamic>> outterDocRefs,
           required String innerCollection,
           required String innerDocumentId,
       });


       //Get reference of nested collection
      CollectionReference<Map<String,dynamic>> getNestedCollectionRef({
           required DocumentReference<Map<String,dynamic>> outterDocRefs,
           required String innerCollection,
      }); 


       //Update the document fully or partially
       Future<void> setData({
           required DocumentReference<Map<String, dynamic>> docRefs,
           required Map<String,dynamic> data,
           bool merge = true
       });

       
       //Add the new document
       Future<void> addData({
           required CollectionReference collectionRefs,
           required Map<String,dynamic> data,
       });

       
       //Update the document
       Future<void> updateData({
           required DocumentReference<Map<String,dynamic>> docRefs,
           required Map<String,dynamic> data
       });

       
       //Delete the document
       Future<void> deleteData({
           required DocumentReference docRefs,
       });

       
       //Get document data once
       Future<Map<String,dynamic>?> getData({
            required DocumentReference<Map<String,dynamic>> docRefs,
       });

       
       //Listen to the document
       Stream<Map<String,dynamic>?> watchDocument({
             required DocumentReference<Map<String, dynamic>> docRefs,
       });

       
       //Listen to the collection
       Stream<List<Map<String,dynamic>>> watchCollection({
           required CollectionReference<Map<String,dynamic>> collectionRefs,
           String orderBy
       });

       

}