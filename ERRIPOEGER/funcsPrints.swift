//
//  funcPrints.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 20/05/24.
//

import Foundation

//Função texto de história é mostrado devagar
func slowPrint(text: String) {
    let separatedText = text.split(separator: " ")
    setbuf(__stdoutp, nil) //To not bug the Console
    for word in separatedText {
        print(word, terminator: " ")
        usleep(10000)
    }
    print(" ▼")
    readLine()
}

//Função texto de escolha é mostrado devagar
func slowChoice(text: String) {
    let separatedText = text.split(separator: " ")
    setbuf(__stdoutp, nil) //To not bug the Console
    for word in separatedText {
        print(word, terminator: " ")
        usleep(10000)
    }
    print()
    print()
}