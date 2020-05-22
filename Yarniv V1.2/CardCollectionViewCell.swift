//
//  CardCollectionViewCell.swift
//  Yarniv V1.2
//
//  Created by Geoffrey Waterson on 2020-05-21.
//  Copyright © 2020 Geoffrey Waterson. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    @IBOutlet weak var backImageView: UIImageView!
    
    var card:Card?
    
    func setCard(_ card:Card) {
        
        // Keep track of thee card that gets passed in
        self.card = card
        
        frontImageView.image = UIImage(named: card.imageName)
         // Keep track of the card that gets passed in
                self.card = card
                
                frontImageView.image = UIImage(named: card.imageName)
                
                // Determine if the card is in a flipped up state or flipped down state
                if card.isFlipped == true {
                    // Make sure the frontimageview is on top
                    UIView.transition(from: backImageView, to: frontImageView, duration: 0, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
                }
                else {
                    // Make sure the backimageview is on top
                    UIView.transition(from: frontImageView, to: backImageView, duration: 0, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
                }
            }
            
            func flip() {
                
                UIView.transition(from: backImageView, to: frontImageView, duration: 0.3, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
                
            }
            
            func flipBack() {
                
                UIView.transition(from: frontImageView, to: backImageView, duration: 0.3, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: nil)
                
            }
        }
