import kotlin.math.max
import kotlin.math.min

fun main(args: Array<String>) {

    val lst: List<Int> = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

    val res: Int = lst.fold(2) { acc, i -> acc * i }
    println(res)

}