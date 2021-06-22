//
//  ColletionViewController.swift
//  tipoGrafei
//
//  Created by Vitor Cheung on 22/06/21.
//

import UIKit

class ColletionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
        
        let images = ["lexico","Wallpaper Japa-1.jpg","Screen Shot 2021-06-17 at 13.42.47","Torneio"]
//        let titles = ["Tipografia", "o que é"]
//        let subtitleText = ["O que é tipografia"]
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return images.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "postCell", for: indexPath) as! PostCell
            cell.image.image = UIImage(named: images[indexPath.row])
//            cell.titleText.text = titles[indexPath.row]
            return cell
        }
        

        
        
        override func viewDidLoad() {
            super.viewDidLoad()
//            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "lexico")!)
            
        }

    }

    class PostCell: UICollectionViewCell {
        

        @IBOutlet weak var background: UIView!
        @IBOutlet weak var image: UIImageView!
        
        override func awakeFromNib() {
            background.layer.cornerRadius = 12
    image.layer.cornerRadius = 12
            
        }
    }

//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "lexico.png")!)
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


