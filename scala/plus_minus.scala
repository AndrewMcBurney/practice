object Solution {
  def getCount(pos: Int, neg: Int, zero: Int, arr: Array[Int], n: Int): (Int, Int, Int, Array[Int], Int) = {
    if (n < 0) return (pos, neg, zero, arr, n)

    arr(n) match {
      case _ if arr(n) > 0 => getCount(pos + 1, neg, zero, arr, n - 1)
      case _ if arr(n) < 0 => getCount(pos, neg + 1, zero, arr, n - 1)
      case _ => getCount(pos, neg, zero + 1, arr, n - 1)
    }
  }

  def main(args: Array[String]) {
    val sc = new java.util.Scanner (System.in);
    var n = sc.nextInt();
    var arr = new Array[Int](n);
    for(arr_i <- 0 to n-1) {
     arr(arr_i) = sc.nextInt();
    }

    val(pos, neg, zero, arr2, m) = getCount(0, 0, 0, arr, n - 1)
    println(pos.toFloat / n)
    println(neg.toFloat / n)
    println(zero.toFloat / n)
  }
}

