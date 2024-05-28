//
//  funcPrints.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 20/05/24.
//

import Foundation

//Função texto de história é mostrado devagar
func slowPrint(text: String) {
    
    print()
    
    let separatedText = text.split(separator: " ")
    setbuf(__stdoutp, nil) //To not bug the Console
    for word in separatedText {
        print("\u{001B}[3m\(word)\u{001B}[0m", terminator: " ")
        usleep(10000)
    }
    print(" ▼")
    _  = readLine()
}

//Função texto de escolha é mostrado devagar
func slowChoice(text: String) {
    
    print()
    
    let separatedText = text.split(separator: " ")
    setbuf(__stdoutp, nil) //To not bug the Console
    for word in separatedText {
        print(word, terminator: " ")
        usleep(10000)
    }
    print()
    print()
}
