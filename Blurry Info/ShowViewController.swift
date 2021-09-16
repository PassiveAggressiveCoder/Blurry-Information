//
//  ShowViewController.swift
//  Blurry Info
//
//  Created by PassAggCoder@Reddit on 9/16/21.
//

import UIKit

class ShowViewController: UIViewController {

    var example: AddressInfo?
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let example = example else { return }
        let view: NewView
        view = NewView.fromNib()
        view.config(info: example)
        view.primaryButton.addTarget(self, action: #selector(confirm), for: .touchUpInside)
        view.infoButton.addTarget(self, action: #selector(info), for: .touchUpInside)
        self.view = view
        addExtraButtons(using: view)
    }
    
    private func addExtraButtons(using view: NewView) {
        if index == 0 { return }
        
        if index == 1 {
            view.secondaryButton.isHidden = false
            view.secondaryButton.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        }
        
        if index == 2 {
            view.tertiaryButton.isHidden = false
            view.tertiaryButton.addTarget(self, action: #selector(other), for: .touchUpInside)
        }
    }
    
    @objc func confirm() {
        let alert = UIAlertController(title: nil, message: "You just confirmed some blurry ass shit", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func cancel() {
        let alert = UIAlertController(title: nil, message: "Get that blurry shit out of here", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel) { _ in
            self.dismiss(animated: true, completion: nil)
        })
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func other() {
        let alert = UIAlertController(title: nil, message: "A Third Random Blurry Button", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func info() {
        let alert = UIAlertController(title: nil, message: "Some Blurry Info", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
