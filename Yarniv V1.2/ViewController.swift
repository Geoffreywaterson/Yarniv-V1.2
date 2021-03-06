//
//  ViewController.swift
//  Yarniv V1.2
//
//  Created by Geoffrey Waterson on 2020-05-18.
//  Copyright © 2020 Geoffrey Waterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var model = CardModel()
    var cardArray = [Card]()
    var TotalScore = 0
    
    @IBOutlet weak var LeftCardImage: UIImageView!
    @IBOutlet weak var RightCardImage: UIImageView!
    @IBOutlet weak var ScoreLabel: UILabel!
      

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func DealTapped(_ sender: Any) {
        
        print("Deal button tapped")
        TotalScore = 0
        ScoreLabel.text = ("\(TotalScore)")
    
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
        playerOneHandArray.removeAll()
        playerTwoHandArray.removeAll()
        
        // Call the Get Cards method of the CardModel
        cardArray = model.getCards()
        print("cardArray has the following \(cardArray[0].value),\(cardArray[1].value),\(cardArray[2].value),\(cardArray[3].value),\(cardArray[4].value)")
        print("PlayerOne has the following \(playerOneHandArray[0].value),\(playerOneHandArray[1].value),\(playerOneHandArray[2].value),\(playerOneHandArray[3].value),\(playerOneHandArray[4].value)")
        print("PlayerTwo has the following \(playerTwoHandArray[0].value),\(playerTwoHandArray[1].value),\(playerTwoHandArray[2].value),\(playerTwoHandArray[3].value),\(playerTwoHandArray[4].value)")
        print(cardArray.count)
        print(playerOneHandArray.count)
        print(playerTwoHandArray.count)
        
       
        
        
        
    }
    
    
    // MARK: - UICollectionView Protocol Methods
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return playerOneHandArray.count        }
        
    
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            // Get an CardCollectionViewCell object
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
            
            
            // Get the card that the collection view is trying to display
            let card = playerOneHandArray[indexPath.row]
                
            // Set that card for the cell
            cell.setCard(card)

            
            return cell
        }

        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
            let cell = collectionView.cellForItem(at: indexPath) as! CardCollectionViewCell
            
            
            let card = playerOneHandArray[indexPath.row]
            if card.isSelected == false {
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 5, initialSpringVelocity: 0, options: [], animations: {
                cell.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                })
        
                card.isSelected = true
                
                // Add to Score
                
                TotalScore += card.value
                ScoreLabel.text = ("\(TotalScore)")
                
            }
            else {
                
                 
                 
                UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 5, initialSpringVelocity: 0, options: [], animations: {
                cell.transform = CGAffineTransform(scaleX: 1, y: 1)
                })
                
                card.isSelected = false
                
                TotalScore -= card.value
                ScoreLabel.text = ("\(TotalScore)")
                // Subtract from Score
                
            }
            
            
        }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    
        let cell = collectionView.cellForItem(at: indexPath) as! CardCollectionViewCell
        let card = playerOneHandArray[indexPath.row]
        
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 5, initialSpringVelocity: 0, options: [], animations: {
            cell.transform = CGAffineTransform(scaleX: 1, y: 1)
            card.isSelected = false
            self.TotalScore -= card.value
        })
    }
    
 
     
     
    }





                        /*
                         For Deal button Tapped
                        // What happens to the Left Card
                        let LeftScoreRandomNumber = arc4random_uniform(13) + 1
                        print("Left Score Random Number = \(LeftScoreRandomNumber)")

                        LeftCardImage.image = UIImage(named: "card\(LeftScoreRandomNumber)")

                        // What happens to the Right Card
                        let RightScoreRandomNumber = arc4random_uniform(13) + 1
                        print("Right Score Random Number = \(RightScoreRandomNumber)")

                        RightCardImage.image = UIImage(named: "card\(RightScoreRandomNumber)")


                        // What happens to the Score Label
                        let TotalScore = LeftScoreRandomNumber + RightScoreRandomNumber
                        ScoreLabel.text = ("\(TotalScore)")
                        */




    /*
 
    FROM WITHIN VIEWDIDLOAD
             
                // Get the cell that the user selected
                let cell = collectionView.cellForItem(at: indexPath) as! CardCollectionViewCell
                
                // Get the card that the user selected
                let card = cardArray[indexPath.row]
                
                if card.isFlipped == false {
                    
                    // Flip the card
                    cell.flip()
                    
                    // Set the status of the card
                    card.isFlipped = true
                }
                else {
                    // Flip the card back
                    cell.flipBack()
                    
                    // Set the status of the card
                    card.isFlipped = false
                }
    */


/* Test Text for de-selecting cards. Didn't quite work.
 
 
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    
        let cell = collectionView.cellForItem(at: indexPath) as! CardCollectionViewCell
    
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 5, initialSpringVelocity: 0, options: [], animations: {
            cell.transform = .identity
        })
    }
*/
