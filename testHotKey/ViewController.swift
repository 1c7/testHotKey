//
//  ViewController.swift
//  testHotKey
//
//  Created by remote_edit on 2019/5/18.
//  Copyright © 2019 1c7. All rights reserved.
//

import Cocoa
import HotKey
import Magnet

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        useMagnet() // Work
        useHotKey() // Doesn't work
        print("viewDidLoad \(Date())")
    }
    
    // Magnet: ⌘ + Control + B
    func useMagnet(){
        if let keyCombo = KeyCombo(keyCode: 11, carbonModifiers: 4352) {
            let hotKey = HotKey(identifier: "CommandControlB", keyCombo: keyCombo, target: self, action: #selector(magnetKey))
            hotKey.register() // or HotKeyCenter.shared.register(with: hotKey)
        }
    }
    @objc func magnetKey(){
        print("Magnet Work! \(Date())")
    }
    
    // HotKey: ⌘ + ⌥ + R
    func useHotKey(){
        let hotKey = HotKey(key: .r, modifiers: [.command, .option])
        hotKey.keyDownHandler = {
            print("HotKey Work! \(Date())")
        }
    }

}
