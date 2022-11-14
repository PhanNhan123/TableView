

import UIKit
import CoreData
class CustomTableCell: UITableViewCell {
    @IBOutlet weak var avtImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // ccore data
    
    var  array = User.sampleData
    var  data = getdata()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // tableview delegate and datasource
    func numberOfSection(in tableView: UITableView) ->Int{
        return 1
    }
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int )-> Int {
        return array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier:"MyCell",for: indexPath) as! CustomTableCell
        let user = array[indexPath.row]
        cell.nameLabel?.text = user.login
        cell.linkLabel?.text = user.url
        cell.avtImage.image  = UIImage(named:  user.avatar_url)
        return cell 
    }
  

}

