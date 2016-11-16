//
//  ViewController.swift
//  Movielist
//
//  Created by Olaf Kroon on 14/11/16.
//  Copyright © 2016 Olaf Kroon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchMovie: UITextField!
    @IBOutlet weak var submitTitle: UIButton!
    
    //http://www.omdbapi.com/?t=south+park&y=&plot=short&r=json
    //https://www.omdbapi.com/?t=james+bond&y=&plot=short&r=json
    
    
    var searchRequest = String()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func getJson(_ sender: Any) {
        if submitTitle.isTouchInside {

            let filler = searchMovie.text?.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
            searchRequest = "https://www.omdbapi.com/?t="+filler!+"&y=&plot=short&r=json"
            print(searchRequest)
            
            let url = URL(string: searchRequest)
            
            let task = URLSession.shared.dataTask(with: url!) { data, response, error in
                guard error == nil else {
                    print("error")
                    return
                }
                guard let data = data else {
                    print("Data is empty")
                    return
                }
                
                // Get status code
                let httpResponse = response as! HTTPURLResponse
                print("STATUSCODE: ", httpResponse.statusCode)
                
                // Parse the data into a json
                let json = try! JSONSerialization.jsonObject(with: data, options: [])
                print(json)
                
            }
            
            task.resume()
        }

        
        
    }
    
    func getJson() -> AnyObject {
        <#function body#>
    }
}

//override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//    
//    // Create a variable that you want to send
//    var newProgramVar = Program(category: "Some", name: "Text")
//    
//    // Create a new variable to store the instance of PlayerTableViewController
//    let destinationVC = segue.destinationViewController as PlayerTableViewController
//    destinationVC.programVar = newProgramVar
//}
//}



