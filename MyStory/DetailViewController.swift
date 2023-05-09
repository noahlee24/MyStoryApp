//
//  DetailViewController.swift
//  MyStory
//
//  Created by Kobe Petrus on 2/26/23.
//

import UIKit

class DetailViewController: UIViewController {
    var detailInfo: Information?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let detailInfo = detailInfo{
            imageView.image = detailInfo.image
            textView.text = detailInfo.paragraph
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
