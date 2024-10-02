//
//  ViewController.swift
//  app6
//
//  Created by Drashti Patel on 04/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         }

    @IBAction func imgpick1(_ sender: UIButton) 
    {
        let imagepicker1 = UIImagePickerController()
        imagepicker1.delegate = self
        present(imagepicker1,animated: true,completion: nil)
   
    }
    
    
    @IBAction func imgpick2(_ sender: Any) 
    {
        let imagepicker2 = UIImagePickerController()
        imagepicker2.delegate = self
        present(imagepicker2,animated: true,completion: nil)
   
    }
    @IBAction func imgpick3(_ sender: Any) 
    {
        let imagepicker3 = UIImagePickerController()
        imagepicker3.delegate = self
        present(imagepicker3,animated: true,completion: nil)
    }
}
extension ViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        let imge=info[.originalImage] as! UIImage
        img1.image=imge
        let img=info[.originalImage] as! UIImage
        img2.image=img
        let img_=info[.originalImage] as! UIImage
        img3.image=img_
        dismiss(animated: true, completion: nil)
    }
}

