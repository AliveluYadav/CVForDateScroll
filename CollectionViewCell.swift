//
//  CollectionViewCell.swift
//  CollectionViewForDate
//
//  Created by LetMeCall Corp on 11/02/19.
//  Copyright © 2019 LetMeCall Corp. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    
    override func draw(_ rect: CGRect) {
        
        self.dateLbl.layer.masksToBounds = true
        self.dateLbl.layer.cornerRadius = 15
    }
    
    override var isSelected: Bool {
        didSet {
            if dateLbl.backgroundColor == UIColor.white{
                
                self.dateLbl.backgroundColor = UIColor.orange
              
            }
            else{
                self.dateLbl.backgroundColor = UIColor.white

            }
        }
    }
 
}
