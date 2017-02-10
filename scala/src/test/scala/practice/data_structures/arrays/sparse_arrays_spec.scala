/**
  * SparseArraysSpec.scala
  *
  * @author: Andrew McBurney
  * @note:   This could probably be implemented in a better way probably - still
  *          learning the ropes with Scala
  */

package practice.arrays

import SparseArrays._
import org.specs2.mutable.Specification

class SparseArraysSpec extends Specification {
  val n_arr: Array[String] = Array("aba", "baba", "aba", "xzxb")
  val q_arr: Array[String] = Array("aba", "xzxb", "ab")
  "Sparse Arrays" should {
    "perform string operations correctly" in {
      SparseArrays.count_occurrences(n_arr, q_arr, 3) mustEqual Array(2, 1, 0)
    }
  }
}
