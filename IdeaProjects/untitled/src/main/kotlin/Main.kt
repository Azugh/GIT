import java.util.*

import person.*

fun main() {

    val names: List<String> = listOf("Dave", "Michael", "Jane", "Lisa", "Antony", "Tony")
    val lst: MutableList<Person> = mutableListOf()
    for (i in 0 until 10) {

        lst.add(Person(names[Random().nextInt(names.size)], Random().nextInt(99) + 1))
    }

    println(lst.joinToString("\n"))
}