/**
  * @author: Andrew McBurney
  */

object ListReplication {
  def f(num: Int, arr: List[Int]): List[Int] = {
    def g(it: Int, arr: List[Int], sol: List[Int]): (Int, List[Int], List[Int]) = {
      if (it == 0) return (0, arr, sol)
      else if (sol.size % arr.size == 0) g(it - 1, arr, sol)
      else g(it, arr, sol :+ arr(it))
    }
    return g(num, arr, List[Int]())._2
  }

  def main(args: Array[String]) {
    val n: Int = 5
    val arr: List[Int] = List(1, 3, 2, 4, 5)

    println(f(n, arr))
  }
}
