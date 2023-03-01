import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/category_model.dart';
import '../models/user_model.dart';
import '../services/firebase_service.dart';

class CategoryRepository{
  CollectionReference<CategoryModel> categoryRef = FirebaseService.db.collection("categories")
      .withConverter<CategoryModel>(
    fromFirestore: (snapshot, _) {
      return CategoryModel.fromFirebaseSnapshot(snapshot);
    },
    toFirestore: (model, _) => model.toJson(),
  );
    Future<List<QueryDocumentSnapshot<CategoryModel>>> getCategories() async {
    try {
      var data = await categoryRef.get();
      bool hasData = data.docs.isNotEmpty;
      if(!hasData){
        makeCategory().forEach((element) async {
          await categoryRef.add(element);
        });
      }
      final response = await categoryRef.get();
      var category = response.docs;
      return category;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<DocumentSnapshot<CategoryModel>>  getCategory(String categoryId) async {
      try{
        print(categoryId);
        final response = await categoryRef.doc(categoryId).get();
        return response;
      }catch(e){
        rethrow;
      }
  }

  List<CategoryModel> makeCategory(){
      return [
        CategoryModel(categoryName: "Romantic ", status: "active", imageUrl: "https://escapetoromance.com/wp-content/uploads/sites/172/2017/05/iStock-503130452.jpg"),
        CategoryModel(categoryName: "Comedy", status: "active", imageUrl: "https://m.media-amazon.com/images/I/41eA0SvrVbL._SL500_.jpg"),
        CategoryModel(categoryName: "Art", status: "active", imageUrl: "https://i.pinimg.com/originals/76/77/9b/76779b7512eae5fb76121cd9ef3b9188.jpg"),
        CategoryModel(categoryName: "Horror", status: "active", imageUrl: "https://weburbanist.com/wp-content/uploads/2008/09/book-art-d.jpg"),
        CategoryModel(categoryName: "Thriller", status: "active", imageUrl: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2021%2F08%2F11%2Ftoy-poodle-puppy-in-hands-1288649610-2000.jpg"),
      ];
  }



}