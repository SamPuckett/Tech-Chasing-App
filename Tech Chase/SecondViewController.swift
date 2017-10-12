//
//  SecondViewController.swift
//  Tech Chase
//
//  Created by Samuel Ruiz on 10/8/17.
//  Copyright © 2017 Samuel Ruiz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imageGameMenu: UIImageView!
    @IBOutlet weak var gameViewLabel: UILabel!
    @IBAction func upButton(_ sender: Any) {
        if counter == 3 {
            gameViewLabel.text = "You're Correct!"
        }
        else {
            gameViewLabel.text = "You're Wrong, Try Again!"
        }
    }
    @IBAction func downButton(_ sender: Any) {
        if counter == 0 {
            gameViewLabel.text = "You're Correct!"
        }
        else {
            gameViewLabel.text = "You're Wrong, Try Again!"
        }
    }
    @IBAction func leftButton(_ sender: Any) {
        if counter == 1 {
            gameViewLabel.text = "You're Correct!"
        }
        else {
            gameViewLabel.text = "You're Wrong, Try Again!"
        }
    }
    @IBAction func rightButton(_ sender: Any) {
        if counter == 2 {
            gameViewLabel.text = "You're Correct!"
        }
        else {
            gameViewLabel.text = "You're Wrong, Try Again!"
        }
    }
    
    
    var imageNames = ["techNone", "techRollBack", "techRollFront", "techRollPlace"]
    var counter:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        counter = Int(arc4random_uniform(UInt32(imageNames.count)))
        imageGameMenu.loadGif(name: imageNames[counter])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
