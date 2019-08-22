//
//  ViewController.swift
//  WeatherScottsdale
//
//  Created by Jeffrey Hotz on 2019-08-19.
//  Copyright © 2019 Jacob Hotz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoVew: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Handle the text field’s user input through delegate callbacks.
        nameText.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//
//        // The info dictionary may contain multiple representations of the image. You want to use the original.
//        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
//            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
//        }
//
//        // Set photoImageView to display the selected image.
//        photoImageView.image = selectedImage
//
//        // Dismiss the picker.
//        dismiss(animated: true, completion: nil)
//    }
//
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
                //Set photoImageView to display the selected image.
                photoVew.image = image
        
                //Dismiss the picker.
                dismiss(animated: true, completion: nil)
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    

    
    @IBAction func selectPhoto(_ sender: UITapGestureRecognizer) {
        nameText.resignFirstResponder()
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
}

