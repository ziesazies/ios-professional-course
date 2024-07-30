//
//  ViewController.swift
//  POC-InputText-ProgressView
//
//  Created by Alief Ahmad Azies on 01/07/24.
//

import UIKit
import Foundation
import FloatingPanel

class ViewController: UIViewController {

    @IBOutlet weak var dropdownImage: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var inputProgressView: UIProgressView!
    
    @IBOutlet weak var goToDetailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputTextView.delegate = self
        inputProgressView.progress = 0.0
    }

    @IBAction func goToDetailButtonTapped(_ sender: Any) {
        let fpc = FloatingPanelController()
        fpc.backdropView.dismissalTapGestureRecognizer.isEnabled = true
        fpc.surfaceView.appearance.cornerRadius = 16
        fpc.surfaceView.grabberHandle.barColor = .clear
        
        let vc = DetailViewController()
        
        fpc.set(contentViewController: vc)
        self.present(fpc, animated: true, completion: nil)
    }
    
//    fileprivate func showTnps(user: vocEligibleHeaderModel?){
        
//        vc.height?.subscribe = { [weak self] value in
//            guard self != nil, let height = value else { return }
//            fpc.layout = FloatingPanelContentFitLayout(heightOfContent: height, isAnchorToSafeArea: true)
//            fpc.invalidateLayout()
//            vc.tableView.layoutIfNeeded()
//        }
        
//        if ContentOptimizer.shared().typeOfUiVoc == InsiderUiVocType.newPreselect.rawValue {
//            vc.advanceFeedbackIsHidden = false
//            vc.didSelectQuestion = false
//            vc.setPreselectState = true
//        
//        } else {
//            vc.isNeedChangeHeight = true
//            vc.advanceFeedbackIsHidden = true
//            vc.didSelectQuestion = true
//        }
//        
//        fpc.set(contentViewController: vc)
//        self.present(fpc, animated: true, completion: nil)
        
//    }
    
}


extension ViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        updateProgressView()
    }
    
    func updateProgressView() {
        let text = inputTextView.text ?? ""
        let words = text.components(separatedBy: CharacterSet.whitespacesAndNewlines).filter { !$0.isEmpty }
        
        let wordCount = words.count
        
        switch wordCount {
        case 0..<3:
            inputProgressView.progress = 1.0 / 3.0
        case 3..<10:
            inputProgressView.progress = 2.0 / 3.0
        default:
            inputProgressView.progress = 1.0
        }
    }
    
}
