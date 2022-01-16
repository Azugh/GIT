
package person

class Person(_name: String, _age: Int){

    private val name: String
    private val age: Int

    init {

        this.name = _name
        this.age = _age
    }

    override fun toString(): String {
        return "${this.name} ${this.age}"
    }
}
