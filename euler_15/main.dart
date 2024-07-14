void main() {
  // routeCounterFunc();
  int gridSize = 20;
  print(routeCounterFunc(gridSize));
}

int routeCounterFunc(int gridSize) {
  List<List<int>> dp =
      List.generate(gridSize + 1, (_) => List.filled(gridSize + 1, 0));

  for (int i = 0; i <= gridSize; i++) {
    for (int j = 0; j <= gridSize; j++) {
      if (i == 0 || j == 0) {
        dp[i][j] = 1;
      } else {
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1];
      }
    }
  }

  return dp[1][1];
}






// List<bool> right = List.filled(20, true);
// List<bool> left = List.filled(20, false);
// int routeCounter = 0;

// void routeCounterFunc() {
//   List<bool> route = [];

//   generateRoutes(
//     right.length,
//     left.length,
//     route,
//   );

//   print(routeCounter);
// }

// void generateRoutes(
//   int rightCount,
//   int leftCount,
//   List<bool> route,
// ) {
//   if (rightCount == 0 && leftCount == 0) {
//     routeCounter++;
//     return;
//   }

//   if (rightCount > 0) {
//     route.add(true);
//     generateRoutes(rightCount - 1, leftCount, route);
//     route.removeLast();
//   }

//   if (leftCount > 0) {
//     route.add(false);
//     generateRoutes(rightCount, leftCount - 1, route);
//     route.removeLast();
//   }
// }
