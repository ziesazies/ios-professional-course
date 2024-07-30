//
//  DetailViewController.swift
//  POC-InputText-ProgressView
//
//  Created by Alief Ahmad Azies on 01/07/24.
//

import UIKit
import FloatingPanel

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailVCLabel: UILabel!
    @IBOutlet weak var detailVCButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func detailVCButtonTapped(_ sender: Any) {
        
        let fpc = FloatingPanelController()
        fpc.backdropView.dismissalTapGestureRecognizer.isEnabled = true
        fpc.surfaceView.appearance.cornerRadius = 16
        fpc.surfaceView.grabberHandle.barColor = .clear
        
        let vc = DetailMoreViewController()
        
        fpc.set(contentViewController: vc)
        self.present(fpc, animated: true, completion: nil)
    }
}
