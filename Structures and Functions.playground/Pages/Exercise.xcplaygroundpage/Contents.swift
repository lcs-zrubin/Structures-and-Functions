/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Exercise
 
 Write a function that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a **Line** structure.
 
 Recall that the shortest distance from a point to a line is the perpendicular distance.

*/

// Begin here... once you teach the computer to do this, you will never need to do it by hand again! :)

struct Point {
    var x : Double = 0
    var y : Double = 0
}
struct Line {
    var rise : Double = 0
    var run : Double = 0
    var yInt : Double = 0
}

var harvey = Line(rise: 1, run: 2, yInt: 5)
var pointy = Point(x: 6, y: 7)

var harveySlope : Double = harvey.rise / harvey.run
var harveyNegRecip : Double = (harvey.run / harvey.rise)*(-1)
var pointyLineIntercept : Double = (pointy.y - (harveyNegRecip * pointy.x))

