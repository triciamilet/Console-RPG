//
//  funcs.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 20/05/24.
//

import Foundation

//Função selecionar Isqueiro
func selectLighter() {
    var selectedItem = inventory()
    
    if selectedItem == "Isqueiro" {
        print("Você acendeu o isqueiro e o corredor se iluminou na sua frente.")
    } else {
        print("Não sei onde esse item pode ser útil.. Escolha outro")
        selectLighter()
    }
}



func secondChoice() {
    print("""
    1 - Pisar em Cima
    2 - Desviar
""")
    print()
    
    var choice = readLine()!
    var number = Int(choice)!
    var answered : Int? = nil
    switch number{
        
    case 1:
        slowChoice (text:"É UMA ARMADILHA! Flechas estão tentanto te atingir! PENSE RÁPIDO!")
        
        print("""
    1 - ESQUERDA!
    2 - DIREITA!
    """)
        
        quickSum(time: 5)
        
        func quickSum(time: Int) {
            
            let queue = DispatchQueue.global()
            let timeLimit = DispatchTime.now() + .seconds(time)
            queue.asyncAfter(deadline: timeLimit) {
                
                if answered == nil {
                    print("As flechas te pegaram e você perdeu. :(")
                    print("Jogue novamente.")
                    exit(0)
                }
                
            }
            if let answer = Int(readLine()!) {
                
                answered = answer
                if answered == 2 {
                    slowPrint(text: "Você se depara com um salão enorme e algumas tochas iluminam o local. Tem um baú no centro recebendo uma luz de cima")
                    thirdChoice()
                } else {}
                
            }
            
        }
        break
        
    case 2:
        slowChoice(text:"Com muito cuidado para não pisar em cima, você desvia e segue em frente.")
        
        print("""
    1 - Esquerda.
    2 - Direita.
    """)
        
        var answer = Int(readLine()!)
        if (answer == 2) {
            slowPrint(text: "Você se depara com um salão enorme e algumas tochas iluminam o local. Tem um baú no centro recebendo uma luz de cima")
            thirdChoice()
            
        } else {
            
        }
        
        break
        
    default:
        switchDefault()
        secondChoice()
        print()
        break
    }
}



func secondFloor() {
    slowPrint(text: "Você encontra escadas que o levam para o segundo andar.")
}

func firstChoice() {
    print("""
    1 - Vasculhar pela areia
    2 - Tatear as paredes
    3 - Olhar de perto
    4 - Procurar no google
""")
    print()
    
    var choice = readLine()!
    var number = Int(choice)!
    
    switch number{
        
    case 1:
        slowChoice(text:"Você escava um pouco da areia ao redor e encontra algo enterrado. É uma alavanca quebrada. Talvez seja útil para alguma coisa.")
        alavanca = true
        firstChoice()
        break
        
    case 2:
        slowChoice(text:"QUENTE! Ficar o dia inteiro nesse sol escaldante deixou as paredes quase pegando fogo.")
        firstChoice()
        break
        
    case 3:
        
        if alavanca {
            slowPrint(text: "Você força a vista e tenta identificar alguma coisa nos desenhos da parede. Tudo empoeirado. Você encontra um espaço que parece algum tipo de encaixe, talvez a alavanca sirva para isso. Você encaixa a alavanca e puxa para baixo.")
            
        } else {
            slowChoice(text: "Você força a vista e tenta identificar alguma coisa nos desenhos da parede. Tudo empoeirado. Você encontra um espaço que parece algum tipo de encaixe, mas não parece ser útil por enquanto.")
            firstChoice()
        }
        break
        
    case 4:
        slowChoice(text: "Boa tentativa, mas não tem sinal de internet por aqui. Continue tentando!")
        print()
        firstChoice()
        print()
        break
        
    default:
        switchDefault()
        firstChoice()
        print()
        break

    }
}


//third choice
func thirdChoice() {
    print("""
1 - Explorar o salão.
2 - Ir até o baú.
""")
    print()
    
    var choice = readLine()!
    var number = Int(choice)!
    
    switch number {
    case 1:
        secondRightExplore()
        break
        
    case 2:
        fourthChoice()
        break
        
    default:
        switchDefault()
        thirdChoice()
        break
    }
}


//Função do inventário

func inventory() -> String {
    
    print("Itens disponiveis")
    for i in 0..<inventoryList.count {
        print(i+1 , "- ", inventoryList[i].qty, "x ", inventoryList[i].item)
    }
    print()
    print("0 - Fechar o Inventário")
    print()
    
    let listPosition = readLine()
    
    if let confirmedPosition = listPosition, let number = Int(confirmedPosition) {
        
        if number == 0 {
            return ""
        } else if number - 1 < inventoryList.count {
            return inventoryList[number-1].item
        } else {
            print("Esse item não existe.")
            inventory()
        }
        
    } else {
        print("Esse item não existe.")
        inventory()
    }
    
    //    listPosition = Optional("3")
    //    confirmedPosition = "3"
    //    number = 3
    
    return ""
}
//Para adicionar item no inventário, utilizar inventoryList.append((Quantidade, "Nome do Item"))

func secondRightExplore() {
    slowPrint(text: "Você anda cautelosamente pelo salão, enquanto encarava aos arredores do baú. Você percebe que o salão é redondo com um degrau de plataforma elevada no centro. Existem algumas meias-paredes e pilastras muito antigas e aos pedaços.")
    slowPrint(text: "VOCÊ SE APROXIMA")
    slowPrint(text: "Você vê uma sequência de sacórfagos enfileirados de maneira desorganizada, alguns de pé, outros apoiados em outros, alguns quebrados por inteiro e outros apenas trincados. O que chama a sua atenção é que, enquanto todos os outros estão muito danificados e você consegue enxergar o interior deles, existe um que está completamente fechado.")
    slowPrint(text: "VOCÊ SE APROXIMA CADA VEZ MAIS...")
    slowPrint(text: "Em passos muito lentos...")
    slowPrint(text: "Quando você chega bem perto do sacorfágo para analisar, e...")
    slowPrint(text: "Um esqueleto ABRE A PORTA BEM NA SUA FRENTE!!!! E ele está VIVO! O que você faz?")
    
    print("""
              1 - Matar Esqueleto
              2 - Conversar com o Esqueleto
              """)
    print()
    coinsRemained(escolha: Int(readLine()!)!)
}

func shopBoard() -> Int {
    
    //var choice3 = 0;
    
    print()
    print ("""
    ♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰
    ♰   1. Cenoura                     $ 3.00      ♰
    ♰   2. Espada                      $ 10.00     ♰
    ♰   3. Armadura                    $ 5.00      ♰
    ♰   4. Vela                        $ 1.00      ♰
    ♰   0. Fechar loja                             ♰
    ♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰
    """)
    return Int(readLine()!)!
    
}

func coinsRemained (escolha: Int) {
    
    let opc01: Int = escolha
    let moedas = inventoryList[0].qty;
    var choice3 = 0;
    if (opc01 == 1){
        
        print("""
            VOCÊ DÁ UM SOCO NO ESQUELETO E O PEGA DESPREVENIDO.
            MAS ELE DEVELVE O GOLPE EM VOCÊ.
        Você perdeu 2 de HP.
        """)
        
    } else if (opc01 == 2) {
        
        print("""
            E aí, meu chapa. Em que posso lhe ajudar?
            Tenho vários itens para vender. Você tem $ \(moedas) moedas
            para gastar como você quiser!
        """)
        choice3 = shopBoard()
        //coinsRemained()
        
    } else if  opc01 == 3 {
        
        choice3 = shopBoard()
    }

    
    else {
        
        print("Opçao inválida, tente novamente!")
        
    }
    
    let cenoura = 3
    let espada = 10
    let armadura = 5
    let vela = 1
    
    switch choice3 {
        
    case 0:
        
        return
        
    case 1:
        if(moedas >= cenoura){
            inventoryList[0].qty -= cenoura
            print("Você comprou o produto CENOURA. Agora você dispõe de $\(inventoryList[0].qty) moedas")
            if let posicaoItem = buscarIndice(item: "Cenoura") {
                inventoryList[posicaoItem].qty += 1
            } else {
                inventoryList.append((1, "Cenoura"))
            }
  
        }else{
            print("Você não tem moedas suficientes 😢")
        }
        
    case 2:
        if(moedas >= espada){
            inventoryList[0].qty -= espada
            print("Você comprou o produto ESPADA. Agora você dispõe de $\(inventoryList[0].qty) moedas")
            if let posicaoItem = buscarIndice(item: "Espada") {
                inventoryList[posicaoItem].qty += 1
            } else {
                inventoryList.append((1, "Espada"))
            }
        }else{
            print("Você não tem moedas suficientes 😢")
        }
        
    case 3:
        if(moedas >= armadura){
            inventoryList[0].qty -= armadura
            print("Você comprou o produto ARMADURA. Agora você dispõe de $\(inventoryList[0].qty) moedas")
            if let posicaoItem = buscarIndice(item: "Armadura") {
                inventoryList[posicaoItem].qty += 1
            } else {
                inventoryList.append((1, "Armadura"))
            }
        }else{
            print("Você não tem moedas suficientes 😢")
        }
        
    case 4:
        
        if(moedas >= vela) {
            inventoryList[0].qty -= vela
            print("Você comprou o produto VELA. Agora você dispõe de $\(inventoryList[0].qty) moedas")
            if let posicaoItem = buscarIndice(item: "Vela") {
                inventoryList[posicaoItem].qty += 1
            } else {
                inventoryList.append((1, "Vela"))
            }
        }else{
            print("Você não tem moedas suficientes 😢")
        }
        
    default:
        print("Você procurou, procurou e procurou o produto que queria, mas não conseguiu encontrá-lo. Tente novamente.")
        print()
        
    }
    coinsRemained(escolha: 3)
}

func fourthChoice() {
    slowPrint(text: "O baú reluz sob a luz que vem de cima. Os detalhes de ouro refletem tanto que seus olhos brilham de ganância. Você sente um desejo enorme de abrir.")
    
    print("1 - ABRIR O BAÚ")
    print("2 - IGNORAR E EXPLORAR O SALÃO")
    
    var choice = readLine()!
    var number = Int(choice)!
    var answered : Int? = nil
    func fourthChoice() {
        switch number{
            
        case 1:
            slowPrint(text: "Você hesita um pouco, mas não resiste!")
            //colocar a foto de um baú
            slowPrint(text: "Com muita dificuldade, você tenta abrir o baú na sua frente. Ele é muito grande e pesado. Você puxa a tampa e ela abre. Mas, o que é isso?")
            slowPrint(text: "Tem um baú muito pequeno lá dentro e um papel do lado de fora, colado na tampa.")
            // colocar um papel escrito a charada
            break
            
        case 2:
            secondRightExplore()
            break
            
        default:
            switchDefault()
            break
        }
    }
    
}

func switchDefault() {
    slowChoice(text: "Você andou em círculos e não chegou em lugar nenhum. Tente novamente.")
    print()
}
