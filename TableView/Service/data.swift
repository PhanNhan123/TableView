import Foundation
import Alamofire
import SwiftyJSON

//func getdata(){
//    let request = AF.request("https://api.github.com/users/mojombo")
//    request.responseJSON{ (data) in
//        print(data.value)
//    }
//}

func getdata(){
    AF.request("https://api.github.com/users").validate().responseJSON { response in
        switch response.result {
        case .success:
            print("data: \(response.value!)")
        case .failure(let error):
            print(error)
        }
    }
}
