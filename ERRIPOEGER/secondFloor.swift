//
//  secondFloor.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 20/05/24.
//

import Foundation

func secondFloor() {
    slowPrint(text: "Você encontra escadas que o levam para o segundo andar!!!!")
    slowPrint(text: " 🚨🚨🚨🚨")
    slowPrint(text: " Você já andou a metade do caminho, o segundo andar estará cheio de surpresas e mais desafios que precisará enfrentar para poder continuar. ")
    slowPrint(text: " ....... opa! neste andar temos uma sala enorme com varias portas, apenas quatro estão abertas")
    
    doors()
    
}

func doors() {
    
    print("""
    
  🔥 𝟏  🔥            🔥  𝟐 🔥          🔥  𝟑 🔥              🔥  𝟒 🔥
 【▒▒▒▒▒▒】          【▒▒▒▒▒▒】        【▒▒▒▒▒▒】             【▒▒▒▒▒▒】
【▒▒▒▒▒ ✞ 】        【▒▒▒▒▒ ✞ 】      【▒▒▒▒▒ ✞ 】           【▒▒▒▒▒ ✞ 】
【▒▒▒▒▒▒▒▒】        【▒▒▒▒▒▒▒▒】      【▒▒▒▒▒▒▒▒】           【▒▒▒▒▒▒▒▒】
【▒▒▒▒▒▒▒▒】        【▒▒▒▒▒▒▒▒】      【▒▒▒▒▒▒▒▒】           【▒▒▒▒▒▒▒▒】
 【▒▒▒▒▒▒】          【▒▒▒▒▒▒】        【▒▒▒▒▒▒】             【▒▒▒▒▒▒】
   Norte                Sul             Leste                 Oeste

Escolha uma delas :

 1. Norte
 2. Sul
 3. Leste
 4. Oeste

""")
    
    var choice = readLine()
    var number = Int(choice!)
    
    switch number {
    case 1:
        doorNorth()
        break
        
    case 2:
        doorSouth()
        break
        
    case 3:
        doorEast()
        break
        
    case nil:
        switchDefault()
        doors()
        
    default:
        switchDefault()
        doors()
    }

}

func doorNorth(){
    print("""
                                      🔥____🔥
                                     【      】
                                    【      ✞ 】
                                    【        】
                                    【        】
                                     【______】
                                       Norte
""")
    
    slowChoice(text: "Você espia pela porta e percebe que é um caminho extremamente escuro.")
    
    print("""
          1 - Continuar
          2 - Voltar
          """)
    print()
    
    let next2 = Int(readLine()!)!
    
    if (next2 == 1) {
        doorNorthChallenge()
        doors()
    }else{
        doors()
        
    }
    
}

func doorNorthChallenge(){
    
    slowPrint(text: "O corredor é bem mais longo e mais escuro do que você esperava. Muita areia entra nos seus olhos e dificulta a sua visão.")
    slowPrint(text: "Você começa andar em circulos e não sabe mais onde for parar. Talvez você tenha algum item melhor que o seu isqueiro que possa iluminar o lugar.")
    slowPrint(text: "ABRIR INVENTÁRIO.")
    
    selectCandle()
    
}

func barrel() {
    
    print("""
    1 - Ler o que está escrito.
    2 - DESTRUIR BARRIL!
""")
    print()
    
    var choice = readLine()
    var number = Int(choice!)
        
    switch number {
    case 1:
        charadaBarrel()
        removerDoInventario(item: "Vela", qty: 1)
        break
             
    case 2:
        removerDoInventario(item: "Vela", qty: 1)
        if sword {
            slowPrint(text: "Você empunha a sua espada e utiliza-a para atravessar o barril, partindo a madeira em duas.")
            slowPrint(text: "Você retira os destroços do caminho e olha lá dentro. Tem alguns itens. Você enfia a sua mão lá dentro para pegá-los.")
            
            if let posicaoItem = buscarIndice(item: "Escudo") {
                inventoryList[posicaoItem].qty += 1
            } else {
                inventoryList.append((1, "Escudo"))
            }
            
            print("Você recebeu o item ESCUDO. Agora você dispõe de \(inventoryList[buscarIndice(item: "Escudo")!].qty) escudo")
            
            slowChoice(text: "Você retorna para o salão de portas. O que você faz?")
            doors()
        } else {
            slowChoice(text: "Você não possui nenhuma ferramenta para destruir o barril. É melhor desistir dessa ideia.")
            barrel()
        }
        break
            
    case nil:
        switchDefault()
    
        
    default:
        switchDefault()
        break
    }
    
}

func doorSouth() {
       print("""
                                         🔥____🔥
                                        【      】
                                       【      ✞ 】
                                       【        】
                                       【        】
                                        【______】
                                           Sul
   """)
       
       slowChoice(text: "Você espia pela porta e percebe que é um caminho cheio de teias.")
       
       print("""
             1 - Continuar
             2 - Voltar
             """)
       print()
       
}

func doorEast() {
       print("""
                                         🔥____🔥
                                        【      】
                                       【      ✞ 】
                                       【        】
                                       【        】
                                        【______】
                                        Leste
   """)
       
       slowChoice(text: "Você espia pela porta e percebe que é o chão tem diversas marcas do tempo.")
       
       print("""
             1 - Continuar
             2 - Voltar
             """)
       print()
    
    
    
    thirdFloor()
    
}
