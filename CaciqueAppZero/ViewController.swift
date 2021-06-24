//
//  ViewController.swift
//  secondTryApp
//
//  Created by Thallis Sousa on 22/06/21.
//

import UIKit

let images = ["one", "two", "three"]
let titles = ["O que é iconografia", "Vamos aprender mais", "Aprenda sobre medievalismo"]

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "postCell", for: indexPath) as! PostCell
        cell.image.image = UIImage(named: images[indexPath.row])
        cell.pTitle.text = titles[indexPath.row]
        cell.pAuthor.text = "Saiba mais"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.black
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        //fazer uma segue
    }
}

class PostCell: UICollectionViewCell {
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var image: UIImageView! //retirar e substituir por um UIButton
    @IBOutlet weak var pTitle: UILabel!
    @IBOutlet weak var pAuthor: UILabel!
    
    
    override func awakeFromNib() {
        background.layer.cornerRadius = 15
        image.layer.cornerRadius = 15 //altera o corner radius da imagem dentro da View
    }
    
}
