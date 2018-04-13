//
//  CustomCell.swift
//  Dont Eat Alone
//
//  Created by Samuel J. Lee on 4/11/18.
//  Copyright © 2018 Dont Eat Alone. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {

    var name_cell: String?
    var descrip_cell: String?
    var image_cell: UIImage?
    
    var nameView : UILabel = {
        var textnameView = UILabel()
        textnameView.translatesAutoresizingMaskIntoConstraints = false
        return textnameView
    }()


    var descripView : UILabel = {
        var textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    var mainImageView : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(nameView)
        self.addSubview(descripView)
        self.addSubview(mainImageView)
        
        mainImageView.layer.borderWidth = 1
        mainImageView.layer.masksToBounds = false
        mainImageView.layer.borderColor = UIColor.black.cgColor
        mainImageView.layer.cornerRadius = 52
        mainImageView.clipsToBounds = true
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        nameView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        nameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        nameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
        descripView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        descripView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        descripView.topAnchor.constraint(equalTo: self.nameView.bottomAnchor).isActive = true
        descripView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let name = name_cell {
            nameView.text = name
        }
        if let image = image_cell {
            mainImageView.image = image
        }
        if let description = descrip_cell {
            descripView.text = description
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
