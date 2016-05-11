//
//  ChestViewController.swift
//  WorkoutTracker
//
//  Created by Stefan Auvergne on 5/9/16.
//  Copyright © 2016 Stefan Auvergne. All rights reserved.
//
// Displays a list of Chest exercises

import UIKit

class ChestViewController: UIViewController {

    @IBOutlet weak var backgroundImageOutlet: UIImageView!
    
    let exerciseKey:String = "exerciseKey"
    var myExercise = Exercise()
    var stringExercise:String = ""
    
    let chestExercises = ["-- Chest --", "Bench Press", "Cable Cross overs", "Cable Flies", "Cable Press", "Dumbell Press", "Incline Flies", "Seated Flies"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
         backgroundImageOutlet.image = UIImage(named: "Background1.png")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return chestExercises.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return chestExercises[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let exercise = chestExercises[row]
        let temp = (exercise)
        stringExercise = String(temp)
    }
    
    @IBAction func addExercise(sender: UIButton) {
        
        myExercise.name = stringExercise
        myExercise.exerciseDescription = "4 sets | 20 reps"
        
        NSNotificationCenter.defaultCenter().postNotificationName("getExerciseID", object: nil, userInfo: [exerciseKey:myExercise])
        
        dismissViewControllerAnimated(true, completion: nil)
    }

}
