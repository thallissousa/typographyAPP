//
//  ViewController.swift
//  secondTryApp
//
//  Created by Thallis Sousa on 22/06/21.
//

import UIKit

let images = ["Tipografia", "cor tipografica", "alinhamento", "cursiva e simbols", "espaçamento", "kerning", "medieval", "serifa"]
let titles = ["O que é tipografia?", "Cor tipográfica", "Alinhamento", "Letras Curisivas e Símbolos",
              "Espaçamento", "Espaçamento entre as letras", "Escrita Medieval", "As serifas"]

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "postCell", for: indexPath) as! PostCell
        cell.index = indexPath.row
        cell.image.image = UIImage(named: images[indexPath.row])
        cell.pTitle.text = titles[indexPath.row]
        cell.pAuthor.text = "Saiba mais"
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController, let index = collectionView.indexPathsForSelectedItems?.first{
            destination.indexDetail = index.row
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    

}


class PostCell: UICollectionViewCell {
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var pTitle: UILabel!
    @IBOutlet weak var pAuthor: UILabel!
    
    var index: Int!
    
    
    override func awakeFromNib() {
        background.layer.cornerRadius = 15
        image.layer.cornerRadius = 15 //altera o corner radius da imagem dentro da View
    }
    
}
