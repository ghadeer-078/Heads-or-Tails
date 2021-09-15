func tossCoin() ->  String{

    print ("Tossing a Coin!")
    //var HeadTail: String 
    let num = arc4random_uniform(2)

        if num == 0 {

            return "Head"
        }
        else
        {
            return "Tails"
        }
    
}

func tossMultipleCoins(times: Int) -> Double{
    var heads = 0
    var tails = 0

    for _ in 1 ... times{
        let result = tossCoin()

        switch result {
        case "came up tails":
        tails += 1

        case "came up heads":
        heads += 1

        default:
            fatalError("error")
        }
    }

    return Double(heads) / Double(times)
}


print(tossMultipleCoins(times: 15))






