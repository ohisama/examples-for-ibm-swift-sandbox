
import KituraNet
import Dispatch
import Foundation
import SwiftyJSON

func main(args:[String:Any]) -> [String:Any] {
    var str = "No response"
    dispatch_sync(dispatch_get_global_queue(0, 0)) {
        HTTP.get("https://httpbin.org/get") { response in
            do 
            {
                str = try response!.readString()!
            } 
            catch 
            {
                print("Error \(error)")
            }
        }
    }
    print("Got string \(str)")
    var result:[String:Any]?
    let data = str.data(using: NSUTF8StringEncoding, allowLossyConversion: true)!
    let json = JSON(data: data)
    if let jsonUrl = json["url"].string 
    {
        print("Got json url \(jsonUrl)")
    }
    else 
    {
        print("JSON DID NOT PARSE")
    }
    do 
    {
        result = try NSJSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
    }
    catch 
    {
        print("Error \(error)")
    }
    print("Result is \(result!)")
    return result!
}
