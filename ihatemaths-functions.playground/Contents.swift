//: Playground - noun: a place where people can play
//: Maths - noun: a problem of high school students

// moving functions using vectors
// i hope i won't have to use this code a lot

func movePoint(point: (x: Int, y: Int), operations: (lr: Int, ud: Int), absolute: String) {
    // i really hate maths man
    // sample point that is part of the function
    let currentPoint = point
    print(currentPoint, " \n \n | \n | \n V \n")
    
    // we pass sample point coordinates to our new point, so we can move it using vector
    var newPoint: (x: Int, y: Int) = currentPoint
    
    // left/right movement
    newPoint.x += operations.lr * -1
    // up/down movement
    newPoint.y += operations.ud
    
    // y-axis symmetry
    // reflect only for positive x'es (and vibes)
    if absolute == "yes" && newPoint.0 > 0 {
        newPoint.0 *= -1
    }
    print(newPoint)
}

movePoint(point: (x: -3, y: 3), operations: (lr: -9, ud: +4), absolute: "yes")
