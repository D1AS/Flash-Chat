import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text,  let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    
                } else {
                    
                    
//                    let defaultAction = UIAlertAction(title: "Agree",
//                                            style: .default) { (action) in
//                        // Respond to user selection of the action.
//                       }
//                       let cancelAction = UIAlertAction(title: "Disagree",
//                                            style: .cancel) { (action) in
//                        // Respond to user selection of the action.
//                       }
//
//                    // Create and configure the alert controller.
//                       let alert = UIAlertController(title: "The  Title",
//                             message: "Good!",
//                             preferredStyle: .alert)
//                       alert.addAction(defaultAction)
//                       alert.addAction(cancelAction)
//
//                       self.present(alert, animated: true) {
//                          // The alert was presented
//                       }
                    
                    
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
        
    }
    
}
