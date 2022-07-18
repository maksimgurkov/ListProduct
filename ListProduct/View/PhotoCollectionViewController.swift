//
//  PhotoCollectionViewController.swift
//  ListProduct
//
//  Created by Максим Гурков on 18.07.2022.
//

import UIKit

class PhotoCollectionViewController: UIViewController {
    
    let imagePicker = UIImagePickerController()

    @IBOutlet weak var collectionViewImage: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewImage.delegate = self
        collectionViewImage.dataSource = self

    }
    
    private var photoPersonImage = [UIImage]()
    
    @IBAction func savePhotoPersonButton(_ sender: Any) {
                imagePicker.delegate = self
                imagePicker.sourceType = .photoLibrary
                imagePicker.allowsEditing = true
                present(imagePicker, animated: true, completion: nil)
    }
    

}

extension PhotoCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photoPersonImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellPhoto", for: indexPath) as! PhptoPersonCollectionViewCell
        cell.imagePersonView.image = photoPersonImage[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        let frameCollectionView = collectionView.frame
        let widthCell = frameCollectionView.width / CGFloat(6)
        let heightCell = widthCell
        return CGSize(width: widthCell, height: heightCell)
    }
}

extension PhotoCollectionViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        photoPersonImage.append(image)
        imagePicker.dismiss(animated: true)
        collectionViewImage.reloadData()
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true)
    }
}
