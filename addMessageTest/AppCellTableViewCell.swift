//
//  AppCellTableViewCell.swift
//  addMessageTest
//
//  Created by Gareth Miller on 27/03/2018.
//  Copyright © 2018 Gareth Miller. All rights reserved.
//

import UIKit

class AppCellTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
