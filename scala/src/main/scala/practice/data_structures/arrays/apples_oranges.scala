/**
  * Apples and Oranges
  *
  * @author: Andrew McBurney
  * @note:   HackerRank - Algorithms Question
  */

object ApplesOranges {
  def main(args: Array[String]) {
    // Starter code
    val sc = new java.util.Scanner (System.in);
    var s = sc.nextInt();
    var t = sc.nextInt();
    var a = sc.nextInt();
    var b = sc.nextInt();
    var m = sc.nextInt();
    var n = sc.nextInt();
    var apple = new Array[Int](m);
    for(apple_i <- 0 to m-1) {
      apple(apple_i) = sc.nextInt();
    }
    var orange = new Array[Int](n);
    for(orange_i <- 0 to n-1) {
      orange(orange_i) = sc.nextInt();
    }

    // My code
    println(apple  filter(d => s <= a + d && a + d <= t) size)
    println(orange filter(d => s <= b + d && b + d <= t) size)
  }
}
