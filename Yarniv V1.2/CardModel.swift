//
//  CardModel.swift
//  Yarniv V1.2
//
//  Created by Geoffrey Waterson on 2020-05-21.
//  Copyright © 2020 Geoffrey Waterson. All rights reserved.
//

import Foundation
import UIKit


class CardModel {
    
    func getCards()  -> [Card] {
        
        // declare an array to store generated numbers
        var generatedCardsArray = [Card]()
        // randomly generate card numbers
        for _ in 1...16 {
            // Get a random Number
            let randomNumber = arc4random_uniform(13) + 1
            
            // Log the number
            print(randomNumber)
        
            // Create the Card Object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            // Add the card to the Array
            generatedCardsArray.append(cardOne)
            
            // OPTIONAL TODO: Make sure only unique pairs (While Loop?)
            
            
        }
        
        // MAY NOT BE NEEDED: randomize the array
        
        // Return the array
        return generatedCardsArray
             
        
    }
    
       
}
