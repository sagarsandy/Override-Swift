import UIKit

// Override: Overriding a function is normal a thing dev life cycle.

// The first method in a view controller is override view didload method.. Let's see what it means and how it works.


class Robot {
    
    var name : String {
        return "Chitti"
    }
    
    func runFaster() {
        print("Robot charging done")
        print("Robot walking instructions added")
        print("Let's say the current speed is 20kmph")
    }
}



// Override can be done in two ways

// Complete override with new steps without using old one

class Robot1PointO : Robot {
    
    override var name: String {
        return "Chitti 1.0"
    }
    
    override func runFaster() {
        print("Robot charging done in my style")
        print("Robot walking instructions added in my style ")
        print("Let's say the current speed is 25 kmph in my style")
    }
}

// In the above code block, we overrided the runFaster method with complete new code block, but we needed parent class other properties like name and all..

let myRobot1 = Robot1PointO()
myRobot1.runFaster()




// Here comes the second case, overriding the parent class method, by executing parent class method code block and new code block

class Robot2POintO : Robot {
    
    override var name: String {
        return "Chitti 2.0"
    }
    
    override func runFaster() {
        super.runFaster()  // This line will execute the parent class method.
        print("After fine tuning the speed is modified to 30kmph")
    }
}

let myRobot = Robot2POintO()
myRobot.runFaster()



// So in our view controller, super view did load will be called becuase it has some application life cycle related code blocks..  :D
