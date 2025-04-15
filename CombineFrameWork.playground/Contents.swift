import UIKit
import Combine

/*
 https://developer.apple.com/documentation/combine
 */

//Just
//Future
// DataTaskPublisher
//Combine Latest
// @Published

func concatString(str1: String, str2: String) -> String {
    return str1 + str2
}

let justPublisher = Just(concatString(str1: "Hello", str2: "World"))
let justSubscriber = Subscribers.Sink<String, Never> { completion in
    print(completion)
} receiveValue: { value in
    print(value)
}

justPublisher.subscribe(justSubscriber)
