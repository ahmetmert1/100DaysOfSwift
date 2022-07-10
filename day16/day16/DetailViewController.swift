//
//  DetailViewController.swift
//  day16
//
//  Created by Ahmet Mert ÖZ on 11.07.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    //IB demek Interface Builder'ın kısaltması demek IBOutlet sadece bir bağlantı olduğunu gösteriyor.
    //Daha fazla bir şey demek değil.
    var selectedImage: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
                    imageView.image  = UIImage(named: imageToLoad)
                }
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
