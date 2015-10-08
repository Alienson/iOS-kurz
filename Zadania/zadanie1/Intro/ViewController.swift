//
//  ViewController.swift
//  Intro
//
//  Created by Adam Turna on 1.10.2015.
//  Copyright © 2015 Adam Turna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLabelSiren: UILabel!
    var sirenContr: AlarmController = AlarmController()
    
    @IBAction func swtAlarm(sender: UISwitch) {
        sirenContr.setAlarm(sender.on)
        sirenContr.actions(lblLabelSiren)
    }
    
    
    @IBAction func segConDoor1(sender: UISegmentedControl) {
        sirenContr.changeDoorOpen()
        sirenContr.actions(lblLabelSiren)
    }
    @IBAction func segConDoor2(sender: UISegmentedControl) {
        sirenContr.changeDoorUnlocked()
        sirenContr.actions(lblLabelSiren)
    }
    @IBAction func segConWindow(sender: UISegmentedControl) {
        sirenContr.changeWindow()
        sirenContr.actions(lblLabelSiren)
    }
    @IBAction func segConMovement(sender: UISegmentedControl) {
        sirenContr.changeMovementDetect()
        sirenContr.actions(lblLabelSiren)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class AlarmController{
        var alarm: Bool = false
        var doorUnlocked: Bool = false
        var doorOpen: Bool = false
        var window: Bool = false
        var movementDetect: Bool = false
        
        init(alarm: Bool = false, doorUnlocked: Bool = false, doorOpen: Bool = false, window: Bool = false, movementDetect: Bool = false) {
            self.alarm = alarm
            self.doorUnlocked = doorUnlocked
            self.doorOpen = doorOpen
            self.movementDetect = movementDetect
            self.window = window
        }
        
        func actions(label: UILabel!){
            if(alarm && (doorUnlocked || doorOpen || window || movementDetect)){
                print("siren on")
                if(doorUnlocked){
                    print("door unlocked")
                }
                else if(doorOpen){
                    print("door open")
                }
                else if(movementDetect){
                    print("movement detected")
                }
                else if(window){
                    print("window broken")
                }
                label.text = "Siren on"
                label.backgroundColor = UIColor.redColor()
            }
            else{
                print("siren off")
                label.text = "Siren off"
                label.backgroundColor = UIColor.grayColor()
            }
        }
        
        func setAlarm(alarm: Bool){
            self.alarm = alarm
        }

        func changeDoorUnlocked(){
            doorUnlocked = !doorUnlocked
        }
        func changeDoorOpen(){
            doorOpen = !doorOpen
        }
        func changeWindow(){
            window = !window
        }
        func changeMovementDetect(){
            movementDetect = !movementDetect
        }
    }
}

