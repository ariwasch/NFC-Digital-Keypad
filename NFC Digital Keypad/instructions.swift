//
//  instructions.swift
//  NFC Digital Keypad
//
//  Created by Ari Wasch on 1/5/20.
//  Copyright © 2020 Ari Wasch. All rights reserved.
//

import Foundation
import UIKit
class Instructions: UIViewController {
//    @IBOutlet weak var textBoi: UITextView!
    @IBOutlet weak var textBoi: UITextView!
    override func viewDidLoad() {
                textBoi.text = "Instructions\n\nThe purpose of this app is to communicate with electronic projec2ts, like Arduinos, through NFC Tags. This app can read and write to NFC tags.\n\nThis app can change the message of an NDEF NFC card. When an Arduino or other electronic project is connected to a PN532 NFC Reader, they can read the NFC card and react accordingly. This app can be used by the user to accomplish the goals of their project best.\n\nFor example, someone could use this app to change the colors of LEDs. In their Arduino code, they can specify what happens when the Arduino receives the string \("blue") to change the LED color to blue. Then they would send \("blue") to the NFC card through this app and tap the NFC card to the NFC reader to successfully send the data. \n\nNFC has an extremely short range: tapping distance. Also, it has a very quick connection time and is disconnected after sending or receiving data, so trying to connect when someone else is connected will not be a problem. NFC is an alternative to Bluetooth and WiFi and would be the best option depending on the user's project. \n\nHelpful Links: \nhttps://learn.adafruit.com/adafruit-pn532-rfid-nfc \nhttps://github.com/adafruit/Adafruit-PN532\nhttps://www.brainy-bits.com/card-reader-with-an-arduino-rfid-using-the-rc522-module/\nhttps://github.com/ljos/MFRC522 \nhttps://www.youtube.com/watch?v=2qf6gIqhWNA\nGood luck on your project! hopefully this app and these links help you in some way!"
        super.viewDidLoad()
    }
}
