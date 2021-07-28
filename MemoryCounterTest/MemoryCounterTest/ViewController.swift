//
//  ViewController.swift
//  MemoryCounterTest
//
//  Created by Kirill Klebanov on 7/28/21.
//

import UIKit

class Person {
    var name: String
    var age: Int
    
    init(name n: String, age a: Int = 18) {
        name = n
        age = a
    }
}

class ViewController: UIViewController {
    
    var person: Person?
    weak var  weakPerson: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doTest()
    }

    func doTest() {
        var localPerson: Person?
        weak var  weakLocalPerson: Person?
        localPerson = Person(name: "Vova")
        weakLocalPerson = localPerson
        
        localPerson = nil
        print("Local strong link: \(String(describing: localPerson?.name))")
        print("Global weak link: \(String(describing: weakLocalPerson?.name))")
    }
}

