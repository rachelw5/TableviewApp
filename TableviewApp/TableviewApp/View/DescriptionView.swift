//
//  DescriptionView.swift
//  TableviewApp
//
//  Created by Rachel on 2/25/24.
//

import UIKit

class DescriptionView: UIViewController {
    
    var getImage = UIImage()
    var getTitle = String()
    var getDescription = String()

    
    @IBOutlet weak var brandImage: UIImageView!
    
    @IBOutlet weak var brandTitle: UILabel!
    
    @IBOutlet weak var brandDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //brandImage.image = brandImage
        brandTitle.text! = "\(String(describing: brandTitle))"
        brandDescription.text! = "\(String(describing: brandDescription))"

        // Do any additional setup after loading the view.
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
