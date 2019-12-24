//
//  MyCoursesTableViewCell.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 05/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit

class MyCoursesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var AuthorName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
