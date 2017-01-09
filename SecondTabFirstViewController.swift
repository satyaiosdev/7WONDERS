//
//  SecondTabFirstViewController.swift
//  PhotosLibrary
//
//  Created by Satya Venkata Krishna Achanta on 1/8/17.
//  Copyright © 2017 Satya Venkata Krishna Achanta. All rights reserved.
//

//
//  SecondTabFirstViewController.swift
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 1/7/17.
//  Copyright © 2017 Satya Venkata Krishna Achanta. All rights reserved.
//

import UIKit
import Photos

private let reuseIdentifier = "Cell"

class SecondTabFirstViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        grabPhotos()
        print("inside view did load of swift")
    }
    
    func grabPhotos(){
        
        let imgManager = PHImageManager.default()
        
        let requestOptions = PHImageRequestOptions()
        
        requestOptions.isSynchronous = true
        
        requestOptions.deliveryMode = .highQualityFormat
        
        let fetchOptions = PHFetchOptions()
        fetchOptions.sortDescriptors = [NSSortDescriptor(key :"creationDate", ascending :false)]
        
        
        if let fetchResult: PHFetchResult = PHAsset.fetchAssets(with: PHAssetMediaType.image, options: fetchOptions)
            
        {
            if fetchResult.count > 0{
                for i in 0..<fetchResult.count{
                    imgManager.requestImage(for: fetchResult.object(at: i) as PHAsset, targetSize: CGSize(width: 250, height: 250), contentMode: .aspectFill, options: requestOptions, resultHandler: {
                        image, error in
                        self.imageArray.append(image!)
                        
                    })
                }
            }
            else{
                
                print("Your photos library is empty")
                self.collectionView?.reloadData()
                
                self.inputViewController?.reloadInputViews()
            }
        }
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section:Int) -> Int{
        
        return imageArray.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = imageArray[indexPath.row]
        
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width = collectionView.frame.width / 3-1
        
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
}
