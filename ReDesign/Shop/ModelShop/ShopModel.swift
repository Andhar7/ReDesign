//
//  ShopModel.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI


// Model Data...

struct Shop: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title: String
    var price: String
    var description: String
}

var bags = [

    Shop(image: "bag1", title: "Office Bag", price: "$234",
         description: "Features Totes deluxe. Sturdy and stylish with a vivid double-sided print. Available in three sizes: check the size chart to find the right one for you. Durable 100% polyester shell. Super strong cotton shoulder straps are 1. (2.5cm) wide and 21. (68cm) long for Small bags, 28 (71 cm) long for Medium bags, and 29 (74 cm) long for Large bags Bright, long-lasting, double-sided design, sublimation printed for you when you order. Gentle machine wash. Looking for something more lightweight? Try the Cotton Tote Bag"),
    Shop(image: "bag5", title: "Stylus Bag", price: "$434", description: "Features Totes deluxe. Sturdy and stylish with a vivid double-sided print. Available in three sizes: check the size chart to find the right one for you. Durable 100% polyester shell. Super strong cotton shoulder straps are 1. (2.5cm) wide and 21. (68cm) long for Small bags, 28 (71 cm) long for Medium bags, and 29 (74 cm) long for Large bags Bright, long-lasting, double-sided design, sublimation printed for you when you order. Gentle machine wash. Looking for something more lightweight? Try the Cotton Tote Bag"),
    Shop(image: "bag6", title: "Round Belt", price: "$134", description: "Features Totes deluxe. Sturdy and stylish with a vivid double-sided print. Available in three sizes: check the size chart to find the right one for you. Durable 100% polyester shell. Super strong cotton shoulder straps are 1. (2.5cm) wide and 21. (68cm) long for Small bags, 28 (71 cm) long for Medium bags, and 29 (74 cm) long for Large bags Bright, long-lasting, double-sided design, sublimation printed for you when you order. Gentle machine wash. Looking for something more lightweight? Try the Cotton Tote Bag"),
    Shop(image: "bag2", title: "Belt Bag", price: "$294", description: "Features Totes deluxe. Sturdy and stylish with a vivid double-sided print. Available in three sizes: check the size chart to find the right one for you. Durable 100% polyester shell. Super strong cotton shoulder straps are 1. (2.5cm) wide and 21. (68cm) long for Small bags, 28 (71 cm) long for Medium bags, and 29 (74 cm) long for Large bags Bright, long-lasting, double-sided design, sublimation printed for you when you order. Gentle machine wash. Looking for something more lightweight? Try the Cotton Tote Bag"),
    Shop(image: "bag3", title: "Hang Top", price: "$204", description: "Features Totes deluxe. Sturdy and stylish with a vivid double-sided print. Available in three sizes: check the size chart to find the right one for you. Durable 100% polyester shell. Super strong cotton shoulder straps are 1. (2.5cm) wide and 21. (68cm) long for Small bags, 28 (71 cm) long for Medium bags, and 29 (74 cm) long for Large bags Bright, long-lasting, double-sided design, sublimation printed for you when you order. Gentle machine wash. Looking for something more lightweight? Try the Cotton Tote Bag"),
    Shop(image: "bag4", title: "Old Fashion", price: "$334", description: "Features Totes deluxe. Sturdy and stylish with a vivid double-sided print. Available in three sizes: check the size chart to find the right one for you. Durable 100% polyester shell. Super strong cotton shoulder straps are 1. (2.5cm) wide and 21. (68cm) long for Small bags, 28 (71 cm) long for Medium bags, and 29 (74 cm) long for Large bags Bright, long-lasting, double-sided design, sublimation printed for you when you order. Gentle machine wash. Looking for something more lightweight? Try the Cotton Tote Bag")

]

// For Top SCrolling Tab Buttons....
var scrolls = ["Hand Bag","Jewellery","Footwear","Dresses","Beauty"]
