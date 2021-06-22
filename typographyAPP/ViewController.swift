//
//  ViewController.swift
//  typographyAPP
//
//  Created by Thallis Sousa on 22/06/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let images = ["whatIs", "kindsOf"]
    let titles = ["Tipografia", "o que é"]
    let subtitleText = ["O que é tipografia"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "postCell", for: indexPath) as! PostCell
        cell.image.image = UIImage(named: images[indexPath.row])
        cell.titleText.text = titles[indexPath.row]
        cell.subtitleText.text = "O que é"
        return cell
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "whatIs.png")!)
        
    }

}

class PostCell: UICollectionViewCell {
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var subtitleText: UILabel!
    
    override func awakeFromNib() {
        background.layer.cornerRadius = 12
        image.layer.cornerRadius = 12
        
    }
}

