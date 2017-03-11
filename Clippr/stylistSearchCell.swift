//
//  stylistSearchCell.swift
//  Clippr
//
//  Created by emgottfr on 3/11/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class stylistSearchCell: UITableViewCell {
    
   
    
    @IBOutlet weak var stylistName: UILabel!
    @IBOutlet weak var stylistImage: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

