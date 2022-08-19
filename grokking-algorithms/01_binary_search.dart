void main(List<String> args) {
  try {
    print(binarySearch(const [1, 2, 3, 4, 5, 6, 7, 8, 9], 6));
  } on Exception catch (e) {
    print(e);
  }
}

/// Should get a sorted array,
/// O(log2n)
int binarySearch(List<int> list, int item) {
  var low = 0;
  var high = list.length - 1;

  while (low <= high) {
    final mid = (low + high) ~/ 2;
    final guess = list[mid];
    if (guess == item) {
      return mid;
    } else if (guess > item) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  throw NoElemntInArray("There is no such element in the array");
}

class NoElemntInArray implements Exception {
  /// Message, describing exception's explanation.
  final String message;

  /// Constructor for [NoElemntInArray].
  const NoElemntInArray(this.message);

  @override
  String toString() => 'NoElemntInArray(message: $message)';
}
