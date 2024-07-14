void main() {
  for (var i = nums.length - 1; i > 0; i--) {
    listSum(nums[i], nums[i - 1]);
    print(nums[0].first);
  }
}

List<List<int>> nums = [];

void listSum(List<int> alt, List<int> ust) {
  for (var i = 0; i < ust.length; i++) {
    int buyuk;
    alt[i] > alt[i + 1] ? buyuk = alt[i] : buyuk = alt[i + 1];
    ust[i] = ust[i] + buyuk;
  }
}
