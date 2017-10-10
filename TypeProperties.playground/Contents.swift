//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct SomeStructure {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {return 1}
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {return 2}
}

class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {return 3}
    
    class var overrideableComputedTypeProperty: Int {
        return 4
    }
}

struct AudioChannel {
    static var maxVolume = 5
    var volume: Int{
        didSet {
            print(oldValue)
            if volume > AudioChannel.maxVolume{
                volume = AudioChannel.maxVolume
            }
        }
    }
}
var leftChannel = AudioChannel(volume: 2)

var rightChannel = AudioChannel(volume: 3)

rightChannel.volume = 6
rightChannel.volume

AudioChannel.maxVolume
AudioChannel.maxVolume = 10
AudioChannel.maxVolume

rightChannel.volume = 8
rightChannel.volume








