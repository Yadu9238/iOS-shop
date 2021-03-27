//
//  ViewController.swift
//  final_try
//
//  Created by Yadu on 26/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var pics = ["shirts","digital","hats","hoodies","books"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register((UINib(nibName: "TableViewCell", bundle: nil)), forCellReuseIdentifier: "cell")
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named: "\(pics[indexPath.row]).png")
        cell.imgLabel.text = "\(pics[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pics.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.frame.height/3
    }
//
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        100
//    }
    
}

