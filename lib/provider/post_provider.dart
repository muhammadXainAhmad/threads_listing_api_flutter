import 'package:flutter/foundation.dart';
import 'package:threads_listing_api/methods/api_methods.dart';
import 'package:threads_listing_api/models/post_model.dart';
import 'package:threads_listing_api/models/user_model.dart';

class PostsProvider extends ChangeNotifier {
  List<UserModel> _users = [];
  List<PostModel> _posts = [];
  bool _isLoading = false;

  List<UserModel> get users => _users;
  List<PostModel> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> fetchData() async {
    _isLoading = true;
    notifyListeners();

    try {
      final userData = await getUserApi();
      final postData = await getPostApi();

      _users = userData;
      _posts = postData;
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
    }

    _isLoading = false;
    notifyListeners();
  }
}
