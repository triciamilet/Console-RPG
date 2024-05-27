//
//  secondFloor.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 20/05/24.
//

import Foundation

func secondFloor() {
    slowPrint(text: "Você encontra escadas que o levam para o segundo andar.")
    slowPrint(text: "Neste andar temos uma sala enorme com varias portas, apenas quatro estão abertas")
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
""" .red2())
    
    print("""
    \nEscolha uma delas :
    
     1. Norte
     2. Sul
     3. Leste
     4. Oeste
    """.red())
    
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
        
    case 4:
        doorWest()
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
""".red2())
    
    slowChoice(text: "Você espia pela porta e percebe que é um caminho extremamente escuro.")
    print()
    print("""
          1 - Continuar
          2 - Voltar
          """.red())
    print()
    
    let next2 = Int(readLine()!)!
    
    if (next2 == 1) {
        doorNorthChallenge()
        doors()
    }else{
        slowChoice(text: "Você amarela e retorna para o salão de portas.".italic())
        doors()
        
    }
    
}

func doorNorthChallenge(){
    
    slowPrint(text: "O corredor é bem mais longo e mais escuro do que você esperava. Muita areia entra nos seus olhos e dificulta a sua visão.".italic())
    slowPrint(text: "Você começa andar em circulos e não sabe mais onde for parar. Talvez você tenha algum item melhor que o seu isqueiro que possa iluminar o lugar.".italic())
    slowPrint(text: "ABRIR INVENTÁRIO.")
    
    selectCandle()
    
}

func barrel() {
    
    print("""
        1 - Ler o que está escrito.
        2 - DESTRUIR BARRIL!
""".red())
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
            slowPrint(text: "Você empunha a sua espada e utiliza-a para atravessar o barril, partindo a madeira em duas.".italic())
            slowPrint(text: "Você retira os destroços do caminho e olha lá dentro. Tem alguns itens. Você enfia a sua mão lá dentro para pegá-los.".italic())
            
            if let posicaoItem = buscarIndice(item: "Escudo") {
                inventoryList[posicaoItem].qty += 1
            } else {
                inventoryList.append((1, "Escudo"))
            }
            
            print("Você recebeu o item ESCUDO. Agora você dispõe de \(inventoryList[buscarIndice(item: "Escudo")!].qty) escudo".italic())
            
            slowChoice(text: "Você retorna para o salão de portas. O que você faz?".italic())
            doors()
        } else {
            slowChoice(text: "Você não possui nenhuma ferramenta para destruir o barril. É melhor desistir dessa ideia.".italic())
            barrel()
        }
        break
        
    case nil:
        switchDefault()
        barrel()
        
    default:
        switchDefault()
        barrel()
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
   """.red2())
    
    slowChoice(text: "Você espia pela porta e percebe que é um caminho cheio de teias.".italic())
    
    print("""
        1 - Continuar
        2 - Voltar
        """.red())
    print()
    
    var choice = readLine()
    var number = Int(choice!)
    
    switch number {
        
    case 1:
        pathFigth()
        combat1(player1: &aranha, player2: &coelho1)
        doors()
        break
        
    case 2:
        slowChoice(text: "Você amarela e retorna para o salão de portas.")
        doors()
        break
        
    default:
        switchDefault()
        doorSouth()
        break
    }
    
    
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
   """.red2())
    
    slowChoice(text: "Você espia pela porta e percebe que é o chão tem diversas marcas do tempo.")
    
    print("""
             1 - Continuar
             2 - Voltar
             """.red())
    print()
    
    var choice = readLine()
    var number = Int(choice!)
    
    switch number {
        
    case 1:
        slowPrint(text: "Você dá um primeiro passo à diante e... o chão se abre em baixo de você! Você caiu o andar inferior e perdeu 3 HP.".italic())
        slowPrint(text: "Mesmo com dores nas pernas, você retorna ao terceiro andar. Agora você precisa tomar mais cuidado para não voltar no mesmo caminho.".italic())
        doors()
        break
        
    case 2:
        slowChoice(text: "Você amarela e retorna para o salão de portas.".italic())
        doors()
        break
        
    default:
        switchDefault()
        doorEast()
        break
        
    }
    
}


func doorWest() {
    
    print("""
                                      🔥____🔥
                                     【      】
                                    【      ✞ 】
                                    【        】
                                    【        】
                                     【______】
                                       Oeste
""".red2())
    
    slowChoice(text: "Você espia pela porta e percebe que a região tem escadas iluminadas logo à frente.".italic())
    
    print("""
          1 - Continuar
          2 - Voltar
          """.red())
    print()
    
    var choice = readLine()
    var number = Int(choice!)
    
    switch number {
        
    case 1:
        thirdFloor()
        break
        
    case 2:
        slowChoice(text: "Você amarela e retorna para o salão de portas.".italic())
        doors()
        break
        
    default:
        switchDefault()
        doorWest()
        break
        
    }
    
    
}
