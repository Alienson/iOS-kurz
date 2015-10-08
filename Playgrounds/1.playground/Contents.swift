//: Playground - noun: a place where people can play

let greeting = "Hello, playground"

var name: String
name = "Adam"

var number: Int = 1
let b = number

var floatValue: Float = 5.14
var doubleValue = 1.12

floatValue = 2*Float(doubleValue)

var isNiceToday: Bool = true

var days = ["Po", "Ut", "St"]

var d: Array<String> = Array<String>()

func concatenate(text1: String, withText: String) -> String {
    return text1 + withText
}

let result = concatenate("Anonym", withText: "ous")

/*
Spravit alarm controler nejakeho domu
vypisovat na konzolu
detekovat nepriatela

*/
struct Point {
    var x: Float
    var y: Float
}

let centerOfUniverse = Point(x: 0, y: 0) // default initializer generated automatically
centerOfUniverse.x
centerOfUniverse.y

/*
V Playground navrhnite triedu AlarmController, ktorá bude realizovať jednoduchý alarm systém:
čakajúci na events ako napr. ‘alarm-on/off’, ‘door locked/unlocked’, ‘door open/closed’, ‘window broken’, ‘movement detected’,…
spúšťajúci actions ako napr: notifikácia o zmene stavu cez sms, ‘siren on/off’,…
reálne akcie simulujte výpismi na konzolu (print)
*/

class AlarmController{
    var alarm: Bool = false
    var doorUnlocked: Bool = false
    var doorOpen: Bool = false
    var window: Bool = false
    var movementDetect: Bool = false
    
    init(alarm: Bool, doorUnlocked: Bool, doorOpen: Bool, window: Bool, movementDetect: Bool) {
        self.alarm = alarm
        self.doorUnlocked = doorUnlocked
        self.doorOpen = doorOpen
        self.movementDetect = movementDetect
        self.window = window
    }
    
    func actions(){
        if(doorUnlocked || doorOpen || window || movementDetect){
            alarm = true
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
            return
        }
        else{
            alarm = false
            print("siren off")
        }
    }

}
