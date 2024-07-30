//
//  HomeViewController.swift
//  POC-InputText-ProgressView
//
//  Created by Alief Ahmad Azies on 01/07/24.
//

import UIKit
import FloatingPanel

class HomeViewController: UIViewController {

    @IBOutlet weak var homeViewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeViewButtonTapped(_ sender: Any) {
        let fpc = FloatingPanelController()
        fpc.backdropView.dismissalTapGestureRecognizer.isEnabled = true
        fpc.surfaceView.appearance.cornerRadius = 16
        fpc.surfaceView.grabberHandle.barColor = .clear
        
        let vc = DetailViewController()
        
        fpc.set(contentViewController: vc)
        self.present(fpc, animated: true, completion: nil)
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
