//
//  portfolioStylistViewController.swift
//  Clippr
//
//  Created by tcarpane on 2/5/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class portfolioStylistViewController: UIViewController,
UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var imageHolder: UIImageView!
   let picker = UIImagePickerController()
    
    @IBOutlet weak var uploadPhotoButton: UIButton!
    @IBOutlet weak var takePhotoButton: UIButton!
    
    override func viewDidLoad() {
    picker.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    
    
    
    @IBAction func takeAPhoto(_ sender: UIBarButtonItem) {
        picker.allowsEditing = false
        picker.sourceType = UIImagePickerControllerSourceType.camera
        picker.cameraCaptureMode = .photo
        picker.modalPresentationStyle = .fullScreen
        present(picker,animated: true,completion: nil)
    }
        
    @IBAction func uploadAPhoto(_ sender: UIBarButtonItem) {
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //MARK: - Delegates
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        imageHolder.contentMode = .scaleAspectFit //3
        imageHolder.image = chosenImage //4
        dismiss(animated:true, completion: nil) //5
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
}

}
