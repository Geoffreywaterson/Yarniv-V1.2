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
        // var cardListArray = [String]()
        
        var allCards = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
        allCards.shuffle()
        print(allCards[0...4])
        var initialNumber = 0
        
        
        // randomly generate card numbers
        for _ in 1...5 {
            // Get a random Number
            // let randomNumber = arc4random_uniform(13) + 1
            
            // Log the number
            // print(randomNumber)
        
            // Instead of 'randomNumber', we need this to be the first or next card within the deck of cards. So make it randomCard instead of randomNumber
            
            
            // Create the Card Object
            let cardOne = Card()
            cardOne.imageName = (allCards[initialNumber])
            // cardOne.imageName = "card\(randomNumber)"
            
            // let CardOneItem = "card\(randomNumber)"
            // print(CardOneItem)
            
            // Add the card to the Array
            generatedCardsArray.append(cardOne)
            // cardListArray.append(CardOneItem)
            
            initialNumber += 1
            
            // OPTIONAL TODO: Make sure only unique pairs (While Loop?)
            
            
        }
        
        // MAY NOT BE NEEDED: randomize the array
        
        // Return the array
        // print(generatedCardsArray)
        // print(cardListArray)
        // cardListArray.sort()
        // print(cardListArray)

        return generatedCardsArray
                
             
        
    }
    
       
}
