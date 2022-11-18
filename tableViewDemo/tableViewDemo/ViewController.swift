//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Gutta,Thrinadh Chowdary on 11/1/22.
//

import UIKit


class Product {
    
    var productName: String?
    var productCategory: String?
    
    init(productName: String, productCategory: String){
        self.productName = productName
        self.productCategory = productCategory
    }
    
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    //create a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell" , for: indexPath)
        
        //populate a cell
        
        cell.textLabel?.text = products[indexPath.row].productName
        
        
        
        
        //return a cell
        return cell
    }
    
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    
    var products = [Product]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let p1 = Product(productName: "MacBookAir", productCategory: "laptop")
        products.append(p1)
        let p2 = Product(productName: "iPhone", productCategory: "cellPhone")
        products.append(p2)
        let p3 = Product(productName: "pen", productCategory: "cello")
        products.append(p3)
        let p4 = Product(productName: "pencil", productCategory: "cello")
        products.append(p4)
        let p5 = Product(productName: "Mouse", productCategory: "Apple")
        products.append(p5)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let transition = segue.identifier
        
        if transition == "result" {
            
            let destination = segue.destination as! ResultViewController
            
            destination.product = products[(tableViewOutlet.indexPathForSelectedRow?.row)!]
            
        }
    }

    
    
    
    

}

