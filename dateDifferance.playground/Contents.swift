import UIKit

typealias UserInfo = (firstName:String, lastName: String, birthDay:String)

var someGuy:UserInfo = ("John", "Doe", "22.08.1989")

func userNameAge(tuple: UserInfo) -> String{
    
    let now = Date() //Get current date Swift 4
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy"
    let birthDay = dateFormatter.date(from: tuple.birthDay) //Convert string to date Swift 4
    
    if birthDay != nil { // Check is date correct
        //Difference between 2 dates in years Swift 4
        let howOld = Calendar.current.dateComponents([.year], from: birthDay!, to: now)
        let years = String(howOld.year!)
        
        return "Full Name: \(tuple.firstName) \(tuple.lastName) Years:\(years)"
    }else {
        
        return "Full Name: \(tuple.firstName) \(tuple.lastName) Years: nil"
    }
}

userNameAge(tuple: someGuy)
