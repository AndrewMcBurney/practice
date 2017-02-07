/**
  * Sparse Arrays
  *
  * @author: Andrew McBurney
  * @note:   This could probably be implemented in a better way probably - still
  *          learning the ropes with Scala
  */

import scala.annotation.tailrec

object Solution {
  // Count occurrences of query array values in n array
  def count_occurrences(n: Array[String], q: Array[String], q_len: Int): Array[Int] = {
    @tailrec
    def recurse(n: Array[String], q: Array[String], num: Array[Int], i: Int): Array[Int] = {
      if (q.isEmpty) num
      else if (i == 0) recurse(n, q.tail, num, n.size)
      else if (q.head == n(i)) recurse(n, q, num.updated(q_len - q.size, + 1), i - 1)
      else recurse(n, q, num, i - 1)
    }
    recurse(n, q, Array.fill[Int](q_len)(0), n.size)
  }

  @tailrec
  def read_lines(arr: Array[String], n: Int): Array[String] =
    if (n == 0) arr
    else read_lines(arr :+ readLine(), n - 1)

  def main(args: Array[String]) = {
    val n: Int = readLine().toInt
    val n_arr: Array[String] = read_lines(Array[String](), n)
    val q: Int = readLine().toInt
    val q_arr: Array[String] = read_lines(Array[String](), q)
    println(count_occurrences(n_arr, q_arr, q).mkString("\n"))
  }
}
