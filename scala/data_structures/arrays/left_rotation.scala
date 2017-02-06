/**
  * Left Rotation
  *
  * @author: Andrew McBurney
  * @note:   Rotates an array left k times. HackerRank - Data Structures Question
  */

object Solution {
  // O(k) time-complexity
  def left_rotate(arr: Array[Int], num_rotations: Int): Array[Int] =
    if (num_rotations == 0) arr
    else left_rotate(arr.tail :+ arr.head, num_rotations - 1)

  def main(args: Array[String]) = {
    val param: Array[Int] = readLine().split(" ").map(_.toInt)
    val arr: Array[Int]   = readLine().split(" ").map(_.toInt)
    println(left_rotate(arr, param(1)).mkString(" "))
  }
}
