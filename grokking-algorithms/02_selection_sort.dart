void main(List<String> args) {
  try {
    print(selectionSort([5, 3, 6, 2, 10]));
  } on Exception catch (e) {
    print(e);
  }
}

/// Sort array by selection,
/// O(n^2)
List<int> selectionSort(List<int> list) {
  final newList = <int>[];
  final length = list.length;
  for (var i = 0; i < length; ++i) {
    final smallest = findSmallest(list);
    newList.add(list.removeAt(smallest));
  }
  return newList;
}

/// Find index of smallest element in array
int findSmallest(List<int> list) {
  var smallest = list[0];
  var smallestIndex = 0;
  for (int i = 1; i < list.length; ++i) {
    if (list[i] < smallest) {
      smallest = list[i];
      smallestIndex = i;
    }
  }
  return smallestIndex;
}
