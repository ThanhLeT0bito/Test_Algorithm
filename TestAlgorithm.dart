//find value min in list
int findMin(List<int> arr) {
  int min = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < min) min = arr[i];
  }
  return min;
}

//find value max in list
int findMax(List<int> arr) {
  int max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) max = arr[i];
  }
  return max;
}

//The sum of a List
BigInt sumArr(List<int> arr) {
  BigInt sum = BigInt.from(0);
  for (int i = 0; i < arr.length; i++) {
    sum += BigInt.from(arr[i]);
  }
  return sum;
}

// mini -Max Sum function
void miniMaxSum(List<int> arr) {
  if (arr.length < 5 || arr.length > 5) {
    print("Input a single line of five space-separated integers");
    return;
  }

  int max = findMax(arr), min = findMin(arr);
  BigInt sum = sumArr(arr);

  print("${sum - BigInt.from(max)}  ${sum - BigInt.from(min)}");
}

void main() {
  List<int> arr = [1, 3, 5, 7, 9];
  int max = findMax(arr), min = findMin(arr);
  BigInt sum = sumArr(arr);

  print("${sum - BigInt.from(max)}  ${sum - BigInt.from(min)}");

  ///  create miniMaxSum function
  arr = [1, 2, 3, 4, 5];
  miniMaxSum(arr);
}
