import 'package:flutter/cupertino.dart';
import 'package:flutter_projects/blogapp/models/api_response.dart';
import 'package:flutter_projects/lib/githubapp/api/githubapi.dart';
import 'package:flutter_projects/lib/githubapp/models/api/response.dart';
import 'package:flutter_projects/lib/githubapp/models/profile.dart';
import 'package:flutter_projects/lib/githubapp/models/repo.dart';

class UserDataProvider extends ChangeNotifier {
  final GitHubApi _api = GitHubApi();

  final String _selectedBackground =' asset/image/bg1.jpg';
  String get selectedBackground => _selectedBackground;

  Future<Profile?> getProfile(String profile) async {
    try {
      ApiResponse response = await _api.getUserProfileData(profile);
      if (response.status == ResponseStatus.success) {
        return Profile.fromMap(response.data);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<Repository?> getRepository(String profile, String repo) async {
    try {
      ApiResponse response = await _api.getUserRepoData(profile, repo);

      if (response.status == ResponseStatus.success) {
        return Repository.fromMap(response.data);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}