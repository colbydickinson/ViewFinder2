//
//  PhotoDetailViewController.swift
//  ViewFinder2
//
//  Created by Colby Dickinson on 5/27/19.
//  Copyright © 2019 Colby Dickinson. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var photoDetail: UIImageView!
    
    @IBOutlet weak var captionDetail: UILabel!
    
    var photo : Photos? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let realPhoto = photo {
            captionDetail.text? = realPhoto.caption!
            
        if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    photoDetail.image = cellPhotoImage
                }
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
