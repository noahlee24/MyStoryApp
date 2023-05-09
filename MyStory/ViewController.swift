//
//  ViewController.swift
//  MyStory
//
//  Created by Kobe Petrus on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    let whereButtonInfo = Information(paragraph: "Kobe Petrus was born and raised in Minneapolis, MN", image: UIImage(named: "Minneapolis"))
    let aightButtonInfo = Information(paragraph: "He mainly steals his clothes from his father, but he gets his eggs at Walmart", image: UIImage(named: "Walmart"))
    let whoButtonInfo = Information(paragraph: "What a coincidence, it just so happends to be me! Kobe Petrus!", image: UIImage(named: "The_Goat2"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func didTapButton(_ sender: Any) {
            performSegue(withIdentifier: "detailSegue", sender: sender)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "detailSegue",
           let senderButton = sender as? UIButton,
           let detailViewController = segue.destination as? DetailViewController {
            if senderButton.tag == 0{
                detailViewController.detailInfo = whereButtonInfo
            }
            else if senderButton.tag == 1{
                detailViewController.detailInfo = aightButtonInfo
            }
            else if senderButton.tag == 2{
                detailViewController.detailInfo = whoButtonInfo
            }
            else {
                print("no button tapped")
            }
        }
    }
    
    
    }


