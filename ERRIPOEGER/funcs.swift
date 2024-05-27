//
//  funcs.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 20/05/24.
//

import Foundation

//Função selecionar Isqueiro
func selectLighter() {
    
    if let selectedItem = inventory() {
        if selectedItem == "Isqueiro" {
            print()
            print("\nVocê acendeu o isqueiro e o corredor se iluminou na sua frente.")
        } else {
            print("Não sei onde esse item pode ser útil.. Escolha outro")
            selectLighter()
        }
    }
    
}

func selectCandle() {
    
    if let selectedItem = inventory() {
        if selectedItem == "Vela" {
            print("\nVocê acendeu a vela e o corredor se iluminou na sua frente.")
            slowChoice(text: "Agora enxergando um pouco melhor, você consegue identificar o caminho a seguir. Ao final do corredor você encontra um papel na parede atrás de um barril. O que você faz?")
            barrel()
        } else {
            print("Não sei onde esse item pode ser útil.. Escolha outro")
            selectCandle()
        } //if selecteditem for FECHAR INVENTARIO, voltar para o corredor de portas.
    }
    
}

func secondChoice() {
    print("""
    1 - Pisar em Cima
    2 - Desviar
""".red())
    print()
    
    let choice = readLine()!
    let number = Int(choice)!
    var answered : Int? = nil
    switch number{
        
    case 1:
        slowChoice (text:"É UMA ARMADILHA! Flechas estão tentanto te atingir! PENSE RÁPIDO!")
        
        print("""
    1 - ESQUERDA!
    2 - DIREITA!
    """ .red())
        
        quickSum(time: 5)
        
        func quickSum(time: Int) {
            
            let queue = DispatchQueue.global()
            let timeLimit = DispatchTime.now() + .seconds(time)
            queue.asyncAfter(deadline: timeLimit) {
                
                if answered == nil {
                    print("/nAs flechas te pegaram e você perdeu. :(")
                    print("Jogue novamente.")
                    exit(0)
                }
                
            }
            if let answer = Int(readLine()!) {
                
                answered = answer
                if answered == 2 {
                    thirdChoice()
                    
                } else {
                    
                    secondFloor()
                    
                }
                
            }
            
        }
        break
        
    case 2:
        slowChoice(text: "Com muito cuidado para não pisar em cima, você desvia e segue em frente.")
        
        print("""
    1 - Esquerda.
    2 - Direita.
    """ .red())
        print()
        var answer = Int(readLine()!)
        if (answer == 2) {
            
            thirdChoice()
            
        } else {
            secondFloor()
        }
        
        break
        
    default:
        switchDefault()
        secondChoice()
        print()
        break
    }
}

func firstChoice() {
    print("""
    1 - Vasculhar pela areia
    2 - Tatear as paredes
    3 - Olhar de perto
    4 - Procurar no google
""" .red())
    print()
    
    let choice = readLine()
    let number = Int(choice!)
    
    switch number{
        
    case 1:
        slowChoice(text:"Você escava um pouco da areia ao redor e encontra algo enterrado. É uma alavanca quebrada. Talvez seja útil para alguma coisa." )
        alavanca = true
        firstChoice()
        break
        
    case 2:
        slowChoice(text:"QUENTE! Ficar o dia inteiro nesse sol escaldante deixou as paredes quase pegando fogo." )
        firstChoice()
        break
        
    case 3:
        
        if alavanca {
            slowPrint(text: "Você força a vista e tenta identificar alguma coisa nos desenhos da parede. Tudo empoeirado. Você encontra um espaço que parece algum tipo de encaixe, talvez a alavanca sirva para isso. Você encaixa a alavanca e puxa para baixo." )
            
        } else {
            slowChoice(text: "Você força a vista e tenta identificar alguma coisa nos desenhos da parede. Tudo empoeirado. Você encontra um espaço que parece algum tipo de encaixe, mas não parece ser útil por enquanto." )
            firstChoice()
        }
        break
        
    case 4:
        slowChoice(text: "Boa tentativa, mas não tem sinal de internet por aqui. Continue tentando!" )
        print()
        firstChoice()
        print()
        break
        
    case nil:
        switchDefault()
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
    
    slowChoice(text: "Você se depara com um salão enorme e algumas tochas iluminam o local. Tem um baú no centro recebendo uma luz de cima")
    
    print("""
    1 - Explorar o salão.
    2 - Ir até o baú.
    3 - Seguir adiante.
""".red())
    print()
    
    var choice = readLine()
    var number = Int(choice!)
    
    switch number {
    case 1:
        secondRightExplore()
        break
        
    case 2:
        fourthChoice()
        break
        
    case 3:
        secondFloor()
        break
        
    case nil:
        switchDefault()
        thirdChoice()
        break
        
    default:
        switchDefault()
        thirdChoice()
        break
    }
}


//Função do inventário

func inventory() -> String? {
    
    print("Itens disponiveis:\n".red())
    
    for i in 0..<inventoryList.count {
        print(String(i+1).red(), "-".red(), String(inventoryList[i].qty).red(), "x".red(), inventoryList[i].item.red())
    }
    print("0 - Fechar o Inventário".red())
    print()
    
    let listPosition = readLine()
    
    if let confirmedPosition = listPosition, let number = Int(confirmedPosition) {
        
        if number == 0 {
            return nil
        } else if number - 1 < inventoryList.count {
            return inventoryList[number-1].item
        } else {
            print("Esse item não existe.")
            return inventory()
        }
        
    } else {
        print("Esse item não existe.")
        return inventory()
    }
        
    
}
//Para adicionar item no inventário, utilizar inventoryList.append((Quantidade, "Nome do Item"))

func secondRightExplore() {
    slowPrint(text: "Você anda cautelosamente pelo salão, enquanto encarava aos arredores do baú. Você percebe que o salão é redondo com um degrau de plataforma elevada no centro. Existem algumas meias-paredes e pilastras muito antigas e aos pedaços.")
    slowPrint(text: "VOCÊ SE APROXIMA")
    slowPrint(text: "Você vê uma sequência de sacórfagos enfileirados de maneira desorganizada, alguns de pé, outros apoiados em outros, alguns quebrados por inteiro e outros apenas trincados. O que chama a sua atenção é que, enquanto todos os outros estão muito danificados e você consegue enxergar o interior deles, existe um que está completamente fechado." )
    slowPrint(text: "VOCÊ SE APROXIMA CADA VEZ MAIS..." )
    slowPrint(text: "Em passos muito lentos..." )
    slowPrint(text: "Quando você chega bem perto do sacorfágo para analisar, e..." )
    slowPrint(text: "Um esqueleto ABRE A PORTA BEM NA SUA FRENTE! E ele está VIVO! O que você faz?" )
    
    print("""
              1 - Matar Esqueleto
              2 - Conversar com o Esqueleto
              """.red())
    print()
    coinsRemained(escolha: Int(readLine()!)!)
}

func shopBoard() -> Int {
    
    //var choice3 = 0
    
    print()
    print ("""
                        ♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰
                        ♰   1. Cenoura                     $ 3.00      ♰
                        ♰   2. Espada                      $ 10.00     ♰
                        ♰   3. Armadura                    $ 5.00      ♰
                        ♰   4. Vela                        $ 1.00      ♰
                        ♰   0. Fechar loja                             ♰
                        ♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰♰
    """ .red())
    return Int(readLine()!)!
    
}

func coinsRemained (escolha: Int) {
    
    let opc01: Int = escolha
    let moedas = inventoryList[0].qty
    var choice3 = 0
    if (opc01 == 1){
        
        print("""
            VOCÊ DÁ UM SOCO NO ESQUELETO E O PEGA DESPREVENIDO.
            MAS ELE DEVELVE O GOLPE EM VOCÊ.
        Você perdeu 2 de HP.
        """)
        
    } else if (opc01 == 2) {
        
        
        print("""
                        ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓      ┏━━━━━━━━━━━━━━━━┓
                        │  E aí, meu chapa! Em que posso lhe ajudar?             │      │  Você tem      │
                        │  Tenho vários itens para vender.                       │      │  $ \(moedas) moedas   │
                        ┗━━⌵━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛      ┗━━━━━━━━━━━━━━━━┛
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
        thirdChoice()
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
                sword = true
            } else {
                inventoryList.append((1, "Espada"))
                sword = true
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
                armor = true
            } else {
                inventoryList.append((1, "Armadura"))
                armor = true
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
    
    slowChoice(text: "O baú reluz sob a luz que vem de cima. Os detalhes de ouro refletem tanto que seus olhos brilham de ganância. Você sente um desejo enorme de abrir.")
    
    print("""
    1 - Abrir o baú
    2 - Ignorar e explorar o salão
    3 - Voltar atrás e seguir adiante
    """.red())
    
    var choice = readLine()
    var number = Int(choice!)
    
    switch number{
        
    case 1:
        slowPrint(text: "Você hesita um pouco, mas não resiste!")
        //colocar a foto de um baú
        slowPrint(text: "Com muita dificuldade, você tenta abrir o baú na sua frente. Ele é muito grande e pesado. Você puxa a tampa e ela abre. Mas, o que é isso?")
        slowPrint(text: "Tem um baú muito pequeno lá dentro e um papel do lado de fora, colado na tampa.")
        // colocar um papel escrito a charada
        
        charadaChest()
        
        break
        
    case 2:
        secondRightExplore()
        returnToChest()
        break
        
    case 3:
        secondFloor()
        break
        
    case nil:
        switchDefault()
        fourthChoice()
        break
        
    default:
        switchDefault()
        fourthChoice()
        break
    }
}

func switchDefault() {
    slowChoice(text: "Você andou em círculos e não chegou em lugar nenhum. Tente novamente.")
    print()
}

func returnToChest() {
    
    slowChoice(text: "Você se despede do Esqueleto e retorna para o centro do salão enorme. O que você faz?")
    
    print("""
    1 - Ir até o baú
    2 - Seguir adiante.
    """ .red())
    
    
    let choice = readLine()
    let number = Int(choice!)
    
    switch number {
    case 2:
        secondRightExplore()
        returnToChest()
        break
        
    case 1:
        fourthChoice()
        break
        
    case nil:
        switchDefault()
        thirdChoice()
        break
        
    default:
        switchDefault()
        thirdChoice()
        break
    }
    
    
    
}


func charadaChest() {
    let resp1 = "VENTO"
    let resp2 = "MAPA"
    let resp3 = "VELA"
    let resp4 = "CHUVA"
    let resp5 = "RIO"
    let resp6 = "TEMPERATURA"
    let resp7 = "FUTURO"
    let resp8 = "GUARDA-CHUVA"
    let resp9 = "MAR"
    let resp10 = "FOGO"
    let sair = "SAIR"
    
    
    let listaCharada: [Int : String] = [
        1 : "   |                             Passa diante do sol e não faz sombra?                           |",
        
        2 : "   |                           Tem cidades, lojas, ruas e nenhuma pessoa?                        |",
        
        3 : "   |                           É alta quando é nova e baixa quando usada?                        |",
        
        4 : "   |                                   Cai em pé e corre deitada?                                |",
        
        5 : "   |                         Não tem pés e corre, e tem leito e não dorme?                       |",
        
        6 : "   |                               Sobe e desce, mas nunca se move?                              |",
        
        7 : "   |                       Está sempre a sua frente, mas você nunca pode ver?                    |",
        
        8 : "   |              Guarda tudo quando está aberto, não guarda nada quando está fechado?           |",
        
        9 : "   |       Eu sou aquele que nunca descansa e vai e vem sem cessar. Nunca consigo me secar.      |",
        
        10 : "   |              Não estou vivo, mas cresço, não tenho pulmões, mas preciso de ar.              |",
    ]
    
    let numeroAleatorio = Int.random(in: 1...10)
    
    switch numeroAleatorio {
    case 1:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res = readLine()
        if(res == resp1) {
            charadaCorrectChest()
        } else if (res == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 2:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res2 = readLine()
        if(res2 == resp2){
            charadaCorrectChest()
        } else if (res2 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 3:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res3 = readLine()
        if(res3 == resp3){
            charadaCorrectChest()
        } else if (res3 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 4:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res4 = readLine()
        if(res4 == resp4){
            charadaCorrectChest()
        } else if (res4 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 5:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res5 = readLine()
        if(res5 == resp5){
            charadaCorrectChest()
        } else if (res5 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 6:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res6 = readLine()
        if(res6 == resp6){
            charadaCorrectChest()
        } else if (res6 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 7:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res7 = readLine()
        if(res7 == resp7){
            charadaCorrectChest()
        } else if (res7 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 8:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res8 = readLine()
        if(res8 == resp8){
            charadaCorrectChest()
        } else if (res8 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 9:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res9 = readLine()
        if(res9 == resp9){
            charadaCorrectChest()
        } else if (res9 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    case 10:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res10 = readLine()
        if(res10 == resp10){
            charadaCorrectChest()
        } else if (res10 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaChest()
        }
    default:
        print("retorna")
    }
}

func charadaBorderTop() {
    print("""
             ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
             |                                                                                             |
             |                     PARA ABRIR O BAÚ, DESCUBRA A RESPOSTA DA CHARADA!                       |
             |▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁|
             |                                                                                             |
             |                                       O que é, o que é?                                     |
             |                                                                                             |
          """.yellow())
}

func charadaBorderBottom() {
    
    print("""
             |▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁|
             |                                                                                             |
             |  DICA: ESCREVA A RESPOSTA EM LETRAS MAIÚSCULAS.                                             |
             |  Digite SAIR para desistir do desafio.                                                      |
             |▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁|
          """.yellow2())
}

func charadaIncorrect() {
    print("   |                                                                                             |".red())
    print("   |                                     Resposta Incorreta!                                     |".red())
    print("   |                                       Tente novamente.                                      |".red())
    print("   |                                                                                             |".red())
}

func charadaCorrectChest() {
    
    print("   |                                      Resposta Correta!                                      |".green2())
    print("   |▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁|".green2())
    print()
    charadaChestRewards()
    thirdChoice()
    
}

func charadaChestRewards() {
    
    if let posicaoItem = buscarIndice(item: "Cenoura") {
        inventoryList[posicaoItem].qty += 1
        print("Você recebeu o item CENOURA. Agora você dispõe de $\(inventoryList[2].qty) cenouras")
    } else {
        inventoryList.append((1, "Cenoura"))
        print("Você recebeu o item CENOURA. Agora você dispõe de $\(inventoryList[2].qty) cenouras")
    }
    if let posicaoItem = buscarIndice(item: "Moedas de Ouro") {
        inventoryList[posicaoItem].qty += 5
        print("Você recebeu o item MOEDAS DE OURO. Agora você dispõe de $\(inventoryList[0].qty) moedas")
    } else {
        inventoryList.append((5, "Moedas de Ouro"))
        print("Você recebeu o item MOEDAS DE OURO. Agora você dispõe de $\(inventoryList[0].qty) moedas")
    }
    
}

func charadaBarrel() {
    let resp1 = "VENTO"
    let resp2 = "MAPA"
    let resp3 = "VELA"
    let resp4 = "CHUVA"
    let resp5 = "RIO"
    let resp6 = "TEMPERATURA"
    let resp7 = "FUTURO"
    let resp8 = "GUARDA-CHUVA"
    let resp9 = "MAR"
    let resp10 = "FOGO"
    let sair = "SAIR"
    
    
    let listaCharada: [Int : String] = [
        1 : "   |                             Passa diante do sol e não faz sombra?                           |",
        
        2 : "   |                           Tem cidades, lojas, ruas e nenhuma pessoa?                        |",
        
        3 : "   |                           É alta quando é nova e baixa quando usada?                        |",
        
        4 : "   |                                   Cai em pé e corre deitada?                                |",
        
        5 : "   |                         Não tem pés e corre, e tem leito e não dorme?                       |",
        
        6 : "   |                               Sobe e desce, mas nunca se move?                              |",
        
        7 : "   |                       Está sempre a sua frente, mas você nunca pode ver?                    |",
        
        8 : "   |              Guarda tudo quando está aberto, não guarda nada quando está fechado?           |",
        
        9 : "   |       Eu sou aquele que nunca descansa e vai e vem sem cessar. Nunca consigo me secar.      |",
        
        10 : "   |              Não estou vivo, mas cresço, não tenho pulmões, mas preciso de ar.              |",
    ]
    
    let numeroAleatorio = Int.random(in: 1...10)
    
    switch numeroAleatorio {
    case 1:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res = readLine()
        if(res == resp1) {
            charadaCorrectBarrel()
        } else if (res == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 2:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res2 = readLine()
        if(res2 == resp2){
            charadaCorrectBarrel()
        } else if (res2 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 3:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res3 = readLine()
        if(res3 == resp3){
            charadaCorrectBarrel()
        } else if (res3 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 4:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res4 = readLine()
        if(res4 == resp4){
            charadaCorrectBarrel()
        } else if (res4 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 5:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res5 = readLine()
        if(res5 == resp5){
            charadaCorrectBarrel()
        } else if (res5 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 6:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res6 = readLine()
        if(res6 == resp6){
            charadaCorrectBarrel()
        } else if (res6 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 7:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res7 = readLine()
        if(res7 == resp7){
            charadaCorrectBarrel()
        } else if (res7 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 8:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res8 = readLine()
        if(res8 == resp8){
            charadaCorrectBarrel()
        } else if (res8 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 9:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res9 = readLine()
        if(res9 == resp9){
            charadaCorrectBarrel()
        } else if (res9 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    case 10:
        charadaBorderTop()
        print(listaCharada[numeroAleatorio]!)
        charadaBorderBottom()
        
        let res10 = readLine()
        if(res10 == resp10){
            charadaCorrectBarrel()
        } else if (res10 == sair){
            
            thirdChoice()
            
        } else {
            charadaIncorrect()
            charadaBarrel()
        }
    default:
        print("retorna")
    }
}

func charadaCorrectBarrel() {
    
    print("   |                                      Resposta Correta!                                      |".green())
    print("   |▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁|".green())
    
    charadaBarrelRewards()
    slowChoice(text: "Você retorna para o salão de portas. O que você faz?")
    doors()
    
}

func charadaBarrelRewards() {
    
    if let posicaoItem = buscarIndice(item: "Escudo") {
        inventoryList[posicaoItem].qty += 1
        shield = true
    } else {
        inventoryList.append((1, "Escudo"))
        shield = true
    }
    
    print("Você recebeu o item ESCUDO. Agora você dispõe de \(inventoryList[buscarIndice(item: "Escudo")!].qty) escudo")
}




              
