//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by EGOR on 14.02.2022.
//

import UIKit

class ProfileView: UIView {
    @IBOutlet weak var BirthData: UILabel!
    @IBOutlet weak var Deception: UITextView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Avatar: UIImageView!
    @IBOutlet weak var Town: UILabel!
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    private func commonInit() {
        let bundle = Bundle.init(for: ProfileView.self)
        if let viewToAdd = bundle.loadNibNamed("ProfileView", owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        }
    }
    
}

