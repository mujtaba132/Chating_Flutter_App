abstract interface class CloudFirestoreService {
       
       
       //Update the document fully or partially
       Future<void> setData({
           required String collection,
           required String documentId,
           required Map<String,dynamic> data,
           bool merge = true
       });

       
       //Add the new document
       Future<void> addData({
           required String collection,
           required Map<String,dynamic> data,
       });

       
       //Update the document
       Future<void> updateData({
           required String collection,
           required String documentId,
           required Map<String,dynamic> data
       });

       
       //Delete the document
       Future<void> deleteData({
             required String collection,
             required String documentId
       });

       
       //Get document data once
       Future<Map<String,dynamic>?> getData({
              required String collection,
              required String documentId
       });

       
       //Listen to the document
       Stream<Map<String,dynamic>?> watchDocument({
            required String collection,
            required String documentId,
       });

       
       //Listen to the collection
       Stream<List<Map<String,dynamic>>> watchCollection({
            required String collection
       });


       //Listen to nested collections
       Stream<List<Map<String,dynamic>>> watchNestedCollection({
            required String outterCollection,
            required String documentId,
            required String innerCollection,
            String orderBy
       });


}