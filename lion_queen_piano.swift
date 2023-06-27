// MARK: - Breaking Barriers

//importing the necessary libraries
import Foundation
import UIKit

//declaring the base variables and constants
var userMessage: String = ""
let baseURL = "www.breakingbarriers.com"

//class declaration for the viewcontroller
class BreakingBarriersViewController: UIViewController {
    
    //IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
    @IBOutlet weak var positiveButton: UIButton!
    @IBOutlet weak var negativeButton: UIButton!
    
    //instance variables
    var currentStory: [String : Any]?
    var stories = [[String : Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchStories()
    }
    
    //action method for when the positive button is pressed
    @IBAction func positiveButtonTapped(_ sender: UIButton) {
        userMessage = "You have made an inspiring choice!"
        showAlert()
    }
    
    //action method for when the negative button is pressed
    @IBAction func negativeButtonTapped(_ sender: UIButton) {
        userMessage = "Be courageous and choose the positive option!"
        showAlert()
    }
    
    //function to show the alert message
    func showAlert() {
        let alert = UIAlertController(title: "Message", message: userMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //UI setup function
    func setupUI() {
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        captionTextView.layer.cornerRadius = 5
        captionTextView.clipsToBounds = true
        positiveButton.layer.cornerRadius = 5
        negativeButton.layer.cornerRadius = 5
    }
    
    //function to fetch stories from the network
    func fetchStories() {
        let urlString = "\(baseURL)/stories"
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            DispatchQueue.main.async {
                guard let data = data else { return }
                guard let stories = try? JSONSerialization.jsonObject(with: data, options: []) as? [[String : Any]] else { return }
                guard let firstStory = stories.first else { return }
                self.stories = stories
                self.currentStory = firstStory
                self.updateUI(with: firstStory)
            }
        }.resume()
    }
    
    //function to update UI with fetched stories
    func updateUI(with story: [String : Any]) {
        guard let imageURLString = story["image"] as? String else { return }
        guard let caption = story["caption"] as? String else { return }
        
        guard let imageURL = URL(string: imageURLString) else { return }
        
        URLSession.shared.dataTask(with: imageURL) { (data, response, err) in
            DispatchQueue.main.async {
                guard let data = data else { return }
                let image = UIImage(data: data)
                self.imageView.image = image
                self.captionTextView.text = caption
            }
        }.resume()
    }
}