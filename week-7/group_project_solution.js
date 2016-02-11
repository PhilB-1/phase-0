function median(array) {
  var length = array.length;
  // console.log(length)
  // console.log(array[1])
  if (length % 2 == 0) {
    var middle = (length / 2);
    console.log(array[middle]);
    console.log(array[middle + 1]);
    return array[middle];
    return array[middle - 1];

  }
  else {
    var middle = (length /2) - 0.5;
    console.log(array[middle]);
    return array[middle];
  }

}

median([1,3,5,6])
median([1,3,5,6,8])