//: Playground - noun: a place where people can play
//: Maths - noun: a problem of high school students

// moving functions using vectors
// i hope i won't have to use this code a lot
// i really hate maths man

import Foundation

class Model {
    var y: Double = 0
    var x: Double = 0
}

func getFunctionModel (x: Double) -> Double {
    let model = Model()
    model.x = x
    model.y = pow(Double(0.25 * x), Double(2))
    
    print(model.y)
    return model.y
}

func moveFunctionPoint(point: (x: Int, y: Int), operations: (lr: Int, ud: Int), absolute: String) {
    // sample point that is part of the function
    point
    print(point, " \n \n | \n | \n V \n")
    
    // we pass sample point coordinates to our new point, so we can move it using vector
    var newPoint: (x: Int, y: Int) = point
    

    
    // y-axis symmetry
    // reflect only for positive x'es (and vibes)
    if absolute == "on_x_only" && newPoint.x > 0 {
        // f(x) = |x|
        
        // left/right movement
        newPoint.x += operations.lr * -1
        // up/down movement
        newPoint.y += operations.ud
        newPoint.x *= -1
    } else if absolute == "on_x_operations" {
        // f(x) = |x - a|
        
        newPoint.x *= -1
        newPoint.x += operations.lr * -1
        newPoint.y += operations.ud
    } else if absolute == "on_func_argument" && newPoint.y < 0 {
        // y = |f(x)|
        
        newPoint.x += operations.lr * -1
        newPoint.y *= -1
        newPoint.y += operations.ud
    } else if absolute == "on_func_whole" {
        newPoint.x += operations.lr * -1
        if (newPoint.y < 0) {
            newPoint.y *= -1
        }
        newPoint.y += operations.ud
        newPoint.x *= -1
    }
    
    print(newPoint)
}

moveFunctionPoint(point: (x: 1, y: 2), operations: (lr: -2, ud: 0), absolute: "on_func_whole")
getFunctionModel(x: 6)
