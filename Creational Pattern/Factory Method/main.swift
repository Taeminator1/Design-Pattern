//
//  main.swift
//  Factory Method
//
//  Created by 윤태민 on 7/4/21.
//

import Foundation

// witho Factory
var product = Factory.getInstance("name")
product.printName()


// witho Factory Method
var productA = ProductA().createProduct("nameA")
productA.printName()

var productB = ProductB().createProduct("nameB")
productB.printName()
