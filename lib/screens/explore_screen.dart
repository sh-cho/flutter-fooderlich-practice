import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          final friendPosts = snapshot.data?.friendPosts ?? [];

          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: recipes),
              const SizedBox(height: 16),
              FriendPostListView(friendPosts: friendPosts),
            ],
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
