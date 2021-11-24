import UIKit

func tossCoin() -> String {
  print ("Tossing a Coin!")
    
    var result :String
    let randomResult = arc4random_uniform(2)
    
    if randomResult == 0 {
        result = "tails"
    }else{
        result = "heads"
    }
    return result
}

func tossMultipleCoins(number : Int ) -> Double {
    var heads = 0
    var tails = 0
    
    for _ in 1...number {
        
        let result = tossCoin()
        
        switch result {
            
            case "tails" :
            tails += 1
            case "heads" :
            heads += 1
        default :
            print("Error")
        }
    }
    
    return Double(heads) / Double (number)
}
print(tossMultipleCoins(number: 15))
