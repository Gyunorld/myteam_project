import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn
import AuthenticationServices
import CryptoKit
import KakaoSDKUser
import KakaoSDKAuth
import KakaoSDKCommon

class SuccessViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Logout(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            let main = self.storyboard?.instantiateViewController(identifier: "MainViewController") as! ViewController
            main.modalPresentationStyle = .fullScreen
            self.present(main, animated: true, completion: nil)
        } catch {
            print("Logout Error")
        }
    }
}
