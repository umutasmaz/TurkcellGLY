//
//  OnboardingCollectionViewCell.swift
//  OnboardingPages
//
//  Created by Umut Asmaz on 28.03.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
 
    
    static let identifier = String(describing: OnboardingViewController.self)
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    
    func setup (_ slide : OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
        
    }
    
}
