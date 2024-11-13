//
//  ViewController.swift
//  DatabaseApp
//
//  Created by MAC1 on 30/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let gifPath = Bundle.main.path(forResource: "book", ofType: "gif") else {
            print("Failed to find the GIF image.")
            return
        }

        guard let gifData = try? Data(contentsOf: URL(fileURLWithPath: gifPath)) else {
            print("Failed to load the GIF image data.")
            return
        }

        guard let gifImage = UIImage.gifImageWithData(gifData) else {
            print("Failed to create the GIF image.")
            return
        }

        // Set the loaded GIF image to the UIImageView
        mylogo.image = gifImage
    }
    @IBAction func btn_insert(_ sender: Any)
    {
        let insertVC=storyboard?.instantiateViewController(identifier: "insertVC") as! InsertViewController
        navigationController?.pushViewController(insertVC, animated: true)
    }
    @IBAction func btn_upate(_ sender: Any)
    {
        let updateVC=storyboard?.instantiateViewController(identifier: "updateVC") as! UpdateViewController
        navigationController?.pushViewController(updateVC, animated: true)
    }
    @IBAction func btn_delete(_ sender: Any)
    {
        let deleteVC=storyboard?.instantiateViewController(identifier: "deleteVC") as! DeleteViewController
        navigationController?.pushViewController(deleteVC, animated: true)
    }
    
    @IBAction func btn_show(_ sender: Any)
    {
        let showVC=storyboard?.instantiateViewController(identifier: "showVC") as! ShowViewController
        navigationController?.pushViewController(showVC, animated: true)
    }
    
}

extension UIImage {
    class func gifImageWithData(_ data: Data) -> UIImage? {
        guard let source = CGImageSourceCreateWithData(data as CFData, nil) else {
            return nil
        }
        
        let frameCount = CGImageSourceGetCount(source)
        var images: [UIImage] = []
        
        for i in 0..<frameCount {
            if let cgImage = CGImageSourceCreateImageAtIndex(source, i, nil) {
                let image = UIImage(cgImage: cgImage)
                images.append(image)
            }
        }
        
        return UIImage.animatedImage(with: images, duration: 0.0)
    }
}
