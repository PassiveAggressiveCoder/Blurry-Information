//
//  NewView.swift
//  Blurry Info
//
//  Created by PassAggCoder@Reddit on 9/16/21.
//

import UIKit

class NewView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var locationImageView: UIImageView!
    @IBOutlet weak var placeNameLabel: UILabel!
    @IBOutlet weak var placeAddressLabel: UILabel!
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var primaryButton: UIButton!
    @IBOutlet weak var secondaryButton: UIButton!
    @IBOutlet weak var tertiaryButton: UIButton!
    
    @IBOutlet weak var buttonsStackView: UIStackView!
    @IBOutlet weak var spacerView: UIView!
    
    func config(info: AddressInfo) {
        titleLabel.text = info.title
        descriptionLabel.text = info.description
        placeNameLabel.text = info.placeName
        placeAddressLabel.text = info.placeAddress
        primaryButton.layer.cornerRadius = 10
        secondaryButton.layer.cornerRadius = 10
        tertiaryButton.layer.cornerRadius = 10
    }
}

struct AddressInfo {
    var title: String
    var description: String
    var placeName: String
    var placeAddress: String
}
