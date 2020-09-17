
import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var img_view: UIImageView!
    
    @IBAction func btn_image(_ sender: Any) {
        let imgpicr = UIImagePickerController()
        imgpicr.delegate=self
        present(imgpicr, animated: true, completion: nil)

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let img = info[.originalImage]as! UIImage
        img_view.image=img
        dismiss(animated: true, completion: nil)
        
        let image = UIAlertController.init(title: "Change Image", message: "Again press the image button if you want to change this image", preferredStyle: .alert)
        let Ok = UIAlertAction.init(title: "Ok", style: .destructive, handler: nil)
        image.addAction(Ok)
        present(image, animated: true, completion: nil)
        
    }
}

