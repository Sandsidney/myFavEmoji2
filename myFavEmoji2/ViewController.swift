//
//  ViewController.swift
//  myFavEmoji2
//
//  Created by BHSRam9 on 9/30/16.
//  Copyright © 2016 BHSRam9. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//add the uitable data source and the uitable view delegate.
    
    
    @IBOutlet weak var coolTableView: UITableView!
    
    var emoji = ["😍 Smiling face with heart-shaped eyes", "😂 Face with tears of joy", "🤓 Nerd face", "😜 Face with stuck-out tongue and winking eye", "😇 Smiling face with halo", "😋 Face savouring delicious food", "😴 Sleeping face"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coolTableView.dataSource=self //used to define the table
        coolTableView.delegate=self   //used to define the content
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count //this thinks about how many var is available and only puts that many rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //this is asking in order what do you want in the cells
        print(indexPath.row)    //arrays and index paths are both zero based
        let cell = UITableViewCell ()
        cell.textLabel?.text = emoji [indexPath.row]
        return cell
        
    }
    // DON"T SELECT DESELECT! MAKE SURE IT IS THE DIDSELECT
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "😍")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

