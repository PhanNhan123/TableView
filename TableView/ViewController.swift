

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{



    @IBOutlet weak var myTableView: UITableView!
    
    let array = ["cat","cat1","cat2","cat3","cat4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    // tableview delegate and datasource
    func numberOfSection(in tableView: UITableView) ->Int{
        return 1
    }
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int )-> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier:"MyCell",for: indexPath)
        cell.textLabel!.text = array[indexPath.row]
        return cell
    }

  
}

