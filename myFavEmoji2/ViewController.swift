//
//  ViewController.swift
//  myFavEmoji2
//
//  Created by BHSRam9 on 9/30/16.
//  Copyright © 2016 BHSRam9. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var coolTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coolTableView.dataSource=self //used to define the table
        coolTableView.delegate=self   //and contents
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //this is asking in order what do you want in the cells
        let cell = UITableViewCell ()
        cell.textLabel?.text = "hello🤓"
        return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

