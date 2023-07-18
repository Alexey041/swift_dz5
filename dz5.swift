
/* В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, 
удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер 
картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы 
класть и пиццу, и картошку фри. */

protocol MenuProtocol {
    var name: String {get}
}


struct Fries: MenuProtocol {
    var name: String
    var price: Double
    var size: String
}

struct Pizza: MenuProtocol {
    var name: String
    var price: Double
}


class Pizzeria {
    private var menu: [MenuProtocol]

    init(menu: [MenuProtocol]) {
        self.menu = menu
    }

    func addNew(_ new: MenuProtocol){
        menu.append(new)
    }

    func getAvailablePizza() {
        print(menu)
    }    
}

var pizzeria = Pizzeria(menu:[])
var pizza = Pizza(name: "Pepperoni", price: 5.99)
var fries = Fries(name: "Potato", price: 1.49, size: "Big")
pizzeria.addNew(pizza)
pizzeria.addNew(fries)
pizzeria.getAvailablePizza()

//Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню

func addNew(_ new: MenuProtocol){
    menu.append(new)
}

//Создайте протокол, в котором будут содержаться функции открытия и закрытия

protocol WorkProtocol {
    func open()
    func close()
}

//Написать расширение для класса пиццерии, в  котором будет реализован протокол из пункта 3


extension Pizzeria: WorkProtocol {}

//Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна 
//работать и с Int, и с Double.Функция должна возвращать результат вычитания


func subtraction<T: Numeric>(a: T, b: T) -> T {
    a - b
}







