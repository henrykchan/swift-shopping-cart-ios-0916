//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items = [Item]()
    
    
    func totalPriceInCents () -> Int {
        
        var sum = 0
        for price in items {
            
            sum = price.priceInCents + sum
        }
        
        
        return sum
    }
    
    
    
    
    func add (item:Item) {
        
        items.append(item)
        
    }
    
    
    
    func remove (item:Item) {

    
            if let item = items.index(of: item) {
    
                items.remove(at: item)
            }
    }

    
    
    func items (withName name:String) -> [Item] {
        
        var newItemArray = [Item]()
        
        for item in items {
            
            if item.name == name {
                
                newItemArray.append(item)
            }
        }
        
        
        return newItemArray
        
    }
    
    
    
    
    func items(withMinPrice price:Int) -> [Item] {
        
        
        var newItemArray = [Item]()
        
        for item in items {
            
            if item.priceInCents >= price {
                
                newItemArray.append(item)
            }
        }
        
        return newItemArray
    }
    
    
    
    
    func items(withMaxPrice price:Int) -> [Item] {
        
        var newItemArray = [Item]()
        
        for item in items {
            
            if item.priceInCents <= price {
                
                newItemArray.append(item)
            }
        }
        
        return newItemArray
    }
    
    
    
    
    
    
    
    
    
    
}
