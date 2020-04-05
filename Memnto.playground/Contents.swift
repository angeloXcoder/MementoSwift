import UIKit


class Memento {
    private var actionArray = [String]()
    
    public init(actionArray : [String] ){
        self.actionArray = actionArray
    }
    
    public func getActionArray()  -> [String]{
        return self.actionArray
    }

}

class Originator {
    private var actionArray = [String]()
    
    public func setActionArray(actionArray : [String]) {
        self.actionArray = actionArray
        print("\(self.actionArray)")
    }
    
    public func save() -> Memento {
        let m = Memento(actionArray: self.actionArray)
        return m
    }
    public func restore(m : Memento) {
        self.actionArray = m.getActionArray()
    }
    
}

class Caretaker {
    private var array = [Memento]()
    public func addMemnto(m : Memento) {
        self.array.append(m)
    }
    public func getMemento() -> Memento {
        self.array[1]
    }
    

    
}

var array1 = ["a1","b1","c1","d1"]
var array2 = ["a2","b2","c2","d2"]
var array3 = ["a3","b3","c3","d3"]
var array4 = ["a4","b4","c4","d4"]
var careTaker  = Caretaker()
var originator = Originator()
originator.setActionArray(actionArray: array1)
originator.setActionArray(actionArray: array2)
careTaker.addMemnto(m: originator.save())
//originator.setActionArray(actionArray: array3)
//careTaker.addMemnto(m: originator.save())
//originator.setActionArray(actionArray: array4)
//originator.restore(m: careTaker.getMemento() )
