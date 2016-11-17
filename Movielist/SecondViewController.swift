//
//  SecondViewController.swift
//  Movielist
//
//  Created by Olaf Kroon on 16/11/16.
//  Copyright © 2016 Olaf Kroon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data = [String: String]()
    
    // This is an array of dictionaries.
    var dictionaries = [[String: Int]]()
    
    
    
    override func viewDidLoad() {
        
        
        print("HALLLOOOO")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("DATA IN SECOND VIEW CONTROLLER")
        print (data)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
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
