import UIKit

/*var capital = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
var capital1 : Dictionary<String, String>
capital1 = Dictionary<String, String>()

var capital2 : Dictionary<String, String>
capital2 = Dictionary()

var capital3 : [String:String]
capital3 = [String:String]()

var capital4 : [String:String]
capital4 = [:]

capital1 = ["US":"Washington"]
capital1.updateValue("Seoul", forKey:"KR")
capital1.updateValue("London", forKey:"EN")
capital1.updateValue("Paris", forKey:"FR")
capital1.updateValue("Ottawa", forKey:"CA")
capital1.updateValue("Beijing", forKey:"CN")
capital1.updateValue("Sejong", forKey:"KR")
capital1.removeValue(forKey: "CN")
print(capital1)*/

/*var capital5 = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
print(capital5["KR"])
capital5["EN"]
capital5["FR"]
capital5["KR"] = "Sejong"
capital5["JP"] = "Tokyo"
print(capital5)
capital5["JP"] = nil
print(capital5["FR"])
*/

var tArray:Array<(String, Int)> = [("a", 1),("b",2)]
print(tArray[1])
let t1 = tArray[0]
t1.0; t1.1

var tuple:([String], Int) = (["덕선, 수현"], 3)
tuple.0

var dic:[String:[String]] = ["name":["덕선", "수현"]]
print(dic["name"])

var dArray:[[String:String]] = [["a":"b","c":"d"], ["c":"d"]]
print(dArray[0])
