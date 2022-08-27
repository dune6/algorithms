void main(List<String> args) {
  try {
    print(quickSort([1, 2, 3, 5, 3, 1, -3, 21]));
  } on Exception catch (e) {
    print(e);
  }
}

/// qiuck sort with first element pivot
List<int> quickSort(List<int> arr) {
  if (arr.length < 2) return arr;

  final pivot = arr.removeAt(0);
  final less = arr.where((element) => element <= pivot).toList();
  final greater = arr.where((element) => element > pivot).toList();

  return quickSort(less) + [pivot] + quickSort(greater);
}
