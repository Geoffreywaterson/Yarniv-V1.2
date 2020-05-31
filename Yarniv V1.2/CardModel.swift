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
        var cardListArray = [String]()
        
        // randomly generate card numbers
        for _ in 1...5 {
            // Get a random Number
            let randomNumber = arc4random_uniform(13) + 1
            
            // Log the number
            print(randomNumber)
        
            // Create the Card Object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            let CardOneItem = "card\(randomNumber)"
            print(CardOneItem)
            
            // Add the card to the Array
            generatedCardsArray.append(cardOne)
            cardListArray.append(CardOneItem)
            
            // OPTIONAL TODO: Make sure only unique pairs (While Loop?)
            
            
        }
        
        // MAY NOT BE NEEDED: randomize the array
        
        // Return the array
        print(cardListArray)
        cardListArray.sort()
        print(cardListArray)

        return generatedCardsArray
                
             
        
    }
    
       
}
