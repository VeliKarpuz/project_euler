void main() {
  for (var i = nums.length - 1; i > 0; i--) {
    listSum(nums[i], nums[i - 1]);
    print(nums[0].first);
  }
}

List<int> num1 = [75];
List<int> num2 = [95, 64];
List<int> num3 = [17, 47, 82];
List<int> num4 = [18, 35, 87, 10];
List<int> num5 = [20, 04, 82, 47, 65];
List<int> num6 = [19, 01, 23, 75, 03, 34];
List<int> num7 = [88, 02, 77, 73, 07, 63, 67];
List<int> num8 = [99, 65, 04, 28, 06, 16, 70, 92];
List<int> num9 = [41, 41, 26, 56, 83, 40, 80, 70, 33];
List<int> num10 = [41, 48, 72, 33, 47, 32, 37, 16, 94, 29];
List<int> num11 = [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14];
List<int> num12 = [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57];
List<int> num13 = [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48];
List<int> num14 = [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31];
List<int> num15 = [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23];
List<List<int>> nums = [
  num1,
  num2,
  num3,
  num4,
  num5,
  num6,
  num7,
  num8,
  num9,
  num10,
  num11,
  num12,
  num13,
  num14,
  num15
];

void listSum(List<int> alt, List<int> ust) {
  for (var i = 0; i < ust.length; i++) {
    int buyuk;
    alt[i] > alt[i + 1] ? buyuk = alt[i] : buyuk = alt[i + 1];
    ust[i] = ust[i] + buyuk;
  }
}
