//
//  DetailMoreViewController.swift
//  POC-InputText-ProgressView
//
//  Created by Alief Ahmad Azies on 01/07/24.
//

import UIKit

class DetailMoreViewController: UIViewController {
    
    

    @IBOutlet weak var dismissDetailMoreButton: UIButton!

    @IBAction func dismissDetailMoreButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBOutlet weak var detailMoreTableView: UITableView!
    
    var data: [String] = [
        "Harga",
        "Kualitas Produk"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailMoreTableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseID")
        detailMoreTableView.delegate = self
        detailMoreTableView.dataSource = self
        
    }

}

extension DetailMoreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailMoreTableView.dequeueReusableCell(withIdentifier: "reuseID", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true)
    }
}
