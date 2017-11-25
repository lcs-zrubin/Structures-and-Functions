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

var existingLine = Line(rise: -1, run: 2, yInt: 9.5)
var point = Point(x: 6, y: 1.5)

var existingLineSlope : Double = existingLine.rise / existingLine.run
var existingLineNegRecip : Double = (existingLine.run / existingLine.rise)*(-1)
var newLineYIntercept : Double = (point.y - (existingLineNegRecip * point.x))
var pointOfIntersectionXValue : Double = ((newLineYIntercept - existingLine.yInt)/(existingLineSlope - existingLineNegRecip))
var point0fIntersectionYValue : Double = existingLineSlope * pointOfIntersectionXValue + existingLine.yInt
var shortestDistance : Double = sqrt((pow(pointOfIntersectionXValue - point.x, 2)+pow(point0fIntersectionYValue - point.y, 2)))
