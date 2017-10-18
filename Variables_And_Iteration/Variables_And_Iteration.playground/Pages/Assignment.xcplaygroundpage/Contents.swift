//: [Previous](@previous)
//: # Assignment
//: Return to the plans you made at the start of this course for an image that used elements of repetition.
//:
//: Mr. Gordon will be emailing this to you.
//:
//: Reproduce that image in code, below.
//:
//: Remember to commit and push your work often.
//:
//: ![commit_menu](commit_menu.png "Commit")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 500, height: 500)
//make the background black
canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
canvas.fillColor = Color.black
//no fill
canvas.drawShapesWithFill = false
//borderwidth
canvas.defaultBorderWidth = 5

// Loop to set horizontal position
for x in stride(from: 0, through: 500, by: 500){
    //loop to set veritical position
    for y in stride(from: 500, through: 0, by: -500){
        //draw ellipses
        for size in stride(from: 1000, through: 0, by: -100){
            
            //for color in stride(from: 0, through: 360, by: 36){
            canvas.borderColor = Color(hue: size/2, saturation: 100, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: x, centreY: y, width: size, height: size)
            //}
        }
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
