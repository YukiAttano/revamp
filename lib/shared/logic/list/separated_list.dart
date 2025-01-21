import "dart:math";

List<T> separatedList<T>(int length, {
  required T Function(int index) itemBuilder,
  required T Function(int index) separatorBuilder,
}) {
  //ignore: parameter_assignments .
  length = _computeActualItemCount(length);
  List<T> list = [];

  for (int zaehler = 0; zaehler < length; zaehler++) {
    int index = zaehler ~/ 2;
    if (zaehler.isEven) {
      list.add(itemBuilder(index));
    } else {
      list.add(separatorBuilder(index));
    }
  }

  return list;
}

int _computeActualItemCount(int itemCount) {
  return max(0, itemCount * 2 - 1);
}
