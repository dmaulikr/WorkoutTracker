//
//  ArmViewController.swift
//  WorkoutTracker
//
//  Created by Stefan Auvergne on 5/9/16.
//  Copyright © 2016 Stefan Auvergne. All rights reserved.
//
// Displays a list of Arm exercises

import UIKit

class ArmViewController: UIViewController {
    
    let exerciseKey:String = "exerciseKey"
    var myExercise = Exercise()
    var stringExercise:String = ""
    
     let armExercises = ["-- Biceps --", "Barbell Curls", "Preacher Curl", "Standing Curls", " ", "-- Triceps --", "Extensions", "Pulldowns", "Skull Crushers", " ", "-- Shoulders --", "Front Raises", "Lateral Raises", "Reverse Flies", "Seated Barbell Raises", "Shrugs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return armExercises.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return armExercises[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let exercise = armExercises[row]
        let temp = (exercise)
        stringExercise = String(temp)
        
    }
    
    @IBAction func addExercise(sender: UIButton) {
        
        
        myExercise.name = stringExercise
        myExercise.exerciseDescription = "4 sets | 12 reps"
    
        NSNotificationCenter.defaultCenter().postNotificationName("getExerciseID", object: nil, userInfo: [exerciseKey:myExercise])
        
        dismissViewControllerAnimated(true, completion: nil)
    }
}
