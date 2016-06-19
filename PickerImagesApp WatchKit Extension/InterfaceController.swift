//
//  InterfaceController.swift
//  PickerImagesApp WatchKit Extension
//
//  Created by Curtis Ruhlman on 12/3/15.
//  Copyright © 2015 Curtis Ruhlman. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var myGroup: WKInterfaceGroup!
    @IBOutlet weak var myPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var pickerItems = [WKPickerItem]()
        
        for index in 0...25 {
            let pickerItem = WKPickerItem()
            pickerItem.contentImage = WKImage(imageName: "newtemp\(index)")
            pickerItems.append(pickerItem)
        }
        myPicker.setItems(pickerItems)
        
        var imageArray = [UIImage]()
        
        for index in 0...25 {
            let image = UIImage(named: "dial\(index)")
            imageArray.append(image!)
        }
        
        let progressImages = UIImage.animatedImageWithImages(imageArray,
            duration: 0.0)
        
        myGroup.setBackgroundImage(progressImages)
        myPicker.setCoordinatedAnimations([myGroup])
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
