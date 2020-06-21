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
    
    var card = Card()
    
    func getCards()  -> [Card] {
        
        // declare an array to store generated numbers
        var generatedCardsArray = [Card]()
        var allCards = [Card]()
        var initialNumber = 0
        
        // populate the array
        
        Card1.imageName = "card1"
        Card1.value = 1
        Card1.suit = "club"
        allCards.append(Card1)
        
        Card2.imageName = "card2"
        Card2.value = 2
        Card2.suit = "club"
        allCards.append(Card2)
        
        Card3.imageName = "card3"
        Card3.value = 3
        Card3.suit = "daimond"
        allCards.append(Card3)
        
        Card4.imageName = "card4"
        Card4.value = 4
        Card4.suit = "spade"
        allCards.append(Card4)
        
        Card5.imageName = "card5"
        Card5.value = 5
        Card5.suit = "heart"
        allCards.append(Card5)
        
        Card6.imageName = "card6"
        Card6.value = 6
        Card6.suit = "heart"
        allCards.append(Card6)
        
        Card7.imageName = "card7"
        Card7.value = 7
        Card7.suit = "heart"
        allCards.append(Card7)
        
        Card8.imageName = "card8"
        Card8.value = 8
        Card8.suit = "heart"
        allCards.append(Card8)
        
        Card9.imageName = "card9"
        Card9.value = 9
        Card9.suit = "heart"
        allCards.append(Card9)
        
        Card10.imageName = "card10"
        Card10.value = 10
        Card10.suit = "heart"
        allCards.append(Card10)
        
        Card11.imageName = "card11"
        Card11.value = 10
        Card11.suit = "heart"
        allCards.append(Card11)
        
        Card12.imageName = "card12"
        Card12.value = 10
        Card12.suit = "heart"
        allCards.append(Card12)
        
        Card13.imageName = "card13"
        Card13.value = 10
        Card13.suit = "heart"
        allCards.append(Card13)
        
        allCards.shuffle()
        
        for _ in 1...5 {
            
            generatedCardsArray.append(allCards[initialNumber])
            
            initialNumber += 1
            
        }
        
        
        return generatedCardsArray
                
             
        
    }
    
       
}









 /* This line goes below the var generatedCardsArray = [Card]()
 
 
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
*/
