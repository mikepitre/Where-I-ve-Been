//
//  AddPlaceVC.swift
//  WhereIveBeen
//
//  Created by Mike Pitre on 11/3/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit
import CoreData

class AddPlaceVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var placeName: UITextField!
    @IBOutlet weak var placeDesc: UITextField!
    @IBOutlet weak var placeCompany: UITextField!
    @IBOutlet weak var placeImg: UIImageView!
    @IBOutlet weak var addImgBtn: UIButton!
    @IBOutlet weak var addPlaceBtn: UIButton!
    
    var imagePicker: UIImagePickerController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        placeImg.layer.cornerRadius = 4.0
        placeImg.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        placeImg.image = image
    }
    
    @IBAction func addImgBtnPressed(sender: UIButton) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addPlaceBtnPressed(sender: AnyObject) {
        if let name = placeName.text where name != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Place", inManagedObjectContext: context)!
            let place = Place(entity: entity, insertIntoManagedObjectContext: context)
            
            place.name = name
            place.desc = placeDesc.text
            place.company = placeCompany.text
            place.setPlaceImg(placeImg.image!)
            
            context.insertObject(place)
            
            do {
                try context.save()
            } catch {
                print("Could not save place.")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
            
        }
    }
    
    

}
