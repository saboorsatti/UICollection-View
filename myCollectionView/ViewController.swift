//
//  ViewController.swift
//  myCollectionView
//
//  Created by Saboor on 08/02/2020.
//  Copyright © 2020 Saboor. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate{
  
    

    let charactersNames = ["Auqaman","Wonderwomen","Superman","Batman","Flash","Cyborg"]
    @IBOutlet weak var myCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollection.dataSource = self
        myCollection.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return charactersNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! myCollectionViewCell
        cell.myLabel.text = charactersNames[indexPath.row]
        cell.myImage.image = UIImage(named: (charactersNames[indexPath.row] + ".jpg"))
        return cell
    }
    
    
    
    
    
    
    
    
    
    

}

