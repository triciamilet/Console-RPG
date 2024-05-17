//
//  main.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 10/05/24.
//

import Foundation

// Cores
extension String {
    
    func bold() -> String { juntar("1")}
    func dim() -> String { juntar("2")}
    func italic() -> String { juntar("3")}
    func underline() -> String { juntar("4")}
    func black() -> String { juntar("30") }
    func red() -> String { juntar("31") }
    func green() -> String { juntar("32") }
    func yellow() -> String { juntar("33") }
    func blue() -> String { juntar("34") }
    func magenta() -> String { juntar("35") }
    func cyan() -> String { juntar("36") }
    func white() -> String { juntar("37") }
    func bgBlack() -> String { juntar("40") }
    func bgRed() -> String { juntar("41") }
    func bgGreen() -> String { juntar("42") }
    func bgYellow() -> String { juntar("43") }
    func bgBlue() -> String { juntar("44") }
    func bgMagenta() -> String { juntar("45") }
    func bgCyan() -> String { juntar("46") }
    func bgWhite() -> String { juntar("47") }
    func underLine() -> String { juntar("4") }
    func risco() -> String {juntar("9")}
    
    func black2() -> String { juntar("90") }
    func red2() -> String { juntar("91") }
    func green2() -> String { juntar("92") }
    func yellow2() -> String { juntar("93") }
    func blue2() -> String { juntar("94") }
    func magenta2() -> String { juntar("95") }
    func cyan2() -> String { juntar("96") }
    func white2() -> String { juntar("97") }
    func bgBlack2() -> String { juntar("100") }
    func bgRed2() -> String { juntar("101") }
    func bgGreen2() -> String { juntar("102") }
    func bgYellow2() -> String { juntar("103") }
    func bgBlue2() -> String { juntar("104") }
    func bgMagenta2() -> String { juntar("105") }
    func bgCyan2() -> String { juntar("106") }
    func bgWhite2() -> String { juntar("107") }
    
    func juntar(_ cor: String) -> String {
        "\u{001B}[0;" + cor + "m" + self + "\u{001B}[0;0m"
    }
    
    var tamanho: Int { self.count - 13 }
    
}

//Game's func

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
        secondRightChest()
        break
        
    default:
        switchDefault()
        thirdChoice()
        break
    }
}

//Função do inventário
var inventoryList: [(qty: Int, item: String)] = []
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

//Função ESQUERDA e DIREITA da secondChoice
func secondRight() {
    slowChoice(text: "Você se depara com um salão enorme e algumas tochas iluminam o local. Tem um baú no centro recebendo uma luz de cima.")
}
func secondRightExplore() {
    slowPrint(text: "Você anda cautelosamente pelo salão, enquanto encarava aos arredores do baú. Você percebe que o salão é redondo com um degrau de plataforma elevada no centro. Existem algumas meias-paredes e pilastras muito antigas e aos pedaços.")
    slowPrint(text: "VOCÊ SE APROXIMA")
    slowPrint(text: "Você vê uma sequência de sacórfagos enfileirados de maneira desorganizada, alguns de pé, outros apoiados em outros, alguns quebrados por inteiro e outros apenas trincados. O que chama a sua atenção é que, enquanto todos os outros estão muito danificados e você consegue enxergar o interior deles, existe um que está completamente fechado.")
    slowPrint(text: "VOCÊ SE APROXIMA CADA VEZ MAIS...")
    slowPrint(text: "Em passos muito lentos...")
    slowPrint(text: "Quando você chega bem perto do sacorfágo para analisar, ELE ABRE BEM NA SUA FRENTE!!!!")
    slowPrint(text: "Um esqueleto abriu a porta bem na sua frente, e ele está VIVO! O que você faz?")
}
func secondRightChest() {
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

func secondFloor() {
    slowPrint(text: "Você encontra escadas que o levam para o segundo andar.")
}

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

func switchDefault() {
    slowChoice(text: "Você andou em círculos e não chegou em lugar nenhum. Tente novamente.")
    print()
}

inventoryList.append((1, "Isqueiro"))
inventoryList.append((2, "Cenoura"))
inventoryList.append((10, "Moedas de Ouro"))

//Adicionar uma introdução animada

slowPrint(text: "Muitos anos atrás, a desigualdade prevaleceu no mundo de Wald e a população foi dividida entre os mais ricos e o Resto. Agora, a única forma de sobrevivência é um paradoxo onde é necessário arriscar a sua própria vida todos os dias. Os mais ricos e poderosos da sociedade estão sempre sedentos pelo entretenimento sombrio de dificultar a vida dos outros e têm fortunas suficientes para pagar valores exorbitantes para contratá-los para fazerem o que eles desejam, que eles próprios não tem coragem de enfrentar.")

slowPrint(text: "Você é o agente Coelho, um dos melhores dos milhares caçadores de recompensas. Após terminar a sua missão mais recente, você foi até o painel de solicitações para aceitar a próxima.")

print("""
               ┏━━━━━━┓                       ┏━━━━━━┓
        ┏━━━━━━┻━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━┻━━━━━━┓
        ┃    __  __ ___ ____ ____   ___  _____ ____         ┃
        ┃    |  ╲╱  |_ _/ ___/ ___| / _ ╲| ____/ ___|       ┃
        ┃    | |╲╱| || |╲___ ╲___ ╲┃ | | |  _| ╲___ ╲       ┃
        ┃    | |  | || | ___) |__) | |_| | |___ ___) |      ┃
        ┃    |_|  |_|___|____/____/ ╲___/|_____|____/       ┃
        ┃                                                   ┃
        ┃       ┏━━━━━┓                     ┏━━━━━┓         ┃
        ┃   ┏━━━┻━┓   ┃  ┏━━━━━┓            ┃     ┃         ┃
        ┃   ┃     ┃   ┃  ┃    ┏┻━━━━┓       ┃     ┃         ┃
        ┃   ┃     ┃   ┃  ┃┏━━━┻━┓   ┃       ┃     ┣━━━━━┓   ┃
        ┃   ┃    ┏┻━━━┻┓ ┃┃ 👑✱ ┃   ┃       ┗━━━━━┫     ┃   ┃
        ┃   ┗━━━━┫     ┃ ┗┫ $99 ┃   ┃             ┃     ┃   ┃
        ┃        ┃     ┃  ┃ 999 ┣━━━┛             ┃     ┃   ┃
        ┃        ┃     ┃  ┗━━━━━┛                 ┗━━━━━┛   ┃
        ┃        ┗━━━━━┛                                    ┃
        ┗━━━━━━┳━━━━━━┳━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━┳━━━━━━┛
               ┃      ┃                       ┃      ┃
               ┊      ┊                       ┊      ┊
""")
print()
slowPrint(text: "No painel, tem uma missão de alto risco. O objetivo é recuperar uma joia valiosa que está localizada em uma tumba no deserto de Skarlet. O risco é alto, mas a recompensa é maior ainda.")

slowPrint(text: "A viagem até as tumbas de Skarlet é sufocante. O sol escaldante e  o horizonte interminável lhe cansam, mas não são suficientes para te fazer desistir. Você anda por mais de 5 quilômetros sem parar até chegar no seu destino final.")

print("""


                _
              (`  ).                   _
             (     ).              .:(`  )`.
            _(       '`.          :(   .    )
        .=(`(      .   )    .--   `.  (    ) )
       ((    (..__.:'-'  .+(   )   ` _`  ) )
       `(       ) )      (   .  )    (   )  ._
        ` __.:'   )    (   (   ))   `-'.-(`  )
    ( )       --'      `- __.'        :(      ))
(_.'   ┃       .')      ┃            ┃  `(    )  ))
       ┃          (_  ) ┃            ┃    ` __.:'
       ┃                ┃            ┃
       ┃                ┃            ┃
       ┃                ┃            ┃
       ┃                ┃            ┃
       ┃                ┃            ┃
       ┃                ┃            ┃
       ┃                ┃            ┃
      ┃                 ┃             ┃
      ┃                 ┃             ┃
      ┃                 ┃             ┃
      ┃                 ┃             ┃
      ┃                 ┃             ┃
      ┃                 ┃             ┃
      ┃                 ┃             ┃
      ┃                 ┃             ┃
     ┃                  ┃              ┃
     ┃                  ┃              ┃
     ┃                  ┃              ┃
     ┃                  ┃              ┃
     ┃                  ┃              ┃
     ┃                  ┃              ┃
     ┃                  ┃              ┃
    ┃                   ┃               ┃
    ┃                   ┃               ┃
    ┃  🔥🔥 🔥 🔥 🔥    ┃   🔥      🔥  ┃
    ┃  ┃  ┃  ┃  ┃  ┃    ┃   ┃        ┃  ┃
    ┃  ┃  ┃  ┃  ┃  ┃    ┃   ┃        ┃  ┃
    ┃                   ┃               ┃    ()()
    ┗━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━┛    (ᴥ  )o
    
""")

slowPrint(text: "A construção é monumental e quase que etérea, você não consegue imaginar como que isso tudo poderia teer sido construído por seres vivos mortais. Você olha para cima para ver a imensidão e o prédio some em meio às nuvens.")

slowPrint(text: "Você anda em volta e analisa as paredes, parece que não há portas. Mas deve haver um meio de entrar.")

var alavanca = false

firstChoice()
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
        slowChoice(text: "Boa tentativa, mas não tem sinal de internet por aqui. Continua tentando")
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

print("""
▒▒▒▒▒▒▒▒▒█████████████████████████████████████████████████▒▒▒▒▒▒▒▒▒
▒▒▒▒▒▒▒▒▒█████████████████████████████████████████████████▒▒▒▒▒▒▒▒▒
▒▒▒▒▒▒▒▒███████████████████████████████████████████████████▒▒▒▒▒▒▒▒
▒▒▒▒▒▒▒▒███████████████████████████████████████████████████▒▒▒▒▒▒▒▒
▒▒▒▒▒▒▒▒███████████████████████████████████████████████████▒▒▒▒▒▒▒▒
▒▒▒▒▒▒▒▒███████████████████████████████████████████████████▒▒▒▒▒▒▒▒
▒▒▒▒▒▒▒▒███████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█████████▒▒▒▒▒▒▒▒
▒▒▒▒▒▒▒████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████████▒▒▒▒▒▒▒
▒▒▒▒▒▒▒███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒▒▒
▒▒▒▒▒▒▒███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒▒▒
▒▒▒▒▒▒▒███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒▒▒
▒▒▒▒▒▒▒███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒▒▒
▒▒▒▒▒▒███░░██████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████░░██▒▒▒▒▒▒
▒▒▒▒▒▒████░░█████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████░░███▒▒▒▒▒▒
▒▒▒▒▒▒████░░█████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████░░███▒▒▒▒▒▒
▒▒▒▒▒▒████░░█████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████░░███▒▒▒▒▒▒
▒▒▒▒▒▒█████░█████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████░████▒▒▒▒▒▒
▒▒▒▒▒▒█████░█████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████░████▒▒▒▒▒▒
▒▒▒▒▒▒███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒▒
▒▒▒▒▒▒███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒▒
▒▒▒▒▒███████████░░░░░░░░░░︵░░︵░░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒
▒▒▒▒▒███████████░░░░░░░░░⎛  ⎞⎛  ⎞░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒
▒▒▒▒▒███████████░░░░░░░░░⎝  ⎠⎝  ⎠░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒
▒▒▒▒▒███████████░░░░░░░░░⎛      ⎞░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒
▒▒▒▒▒███████████░░░░░░░░░⎝▁▁▁▁▁▁⎠░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒
▒▒▒▒▒███████████░░░░░░░░░⎛      ⎞░░░░░░░░░░░░░░░░░░░░█████████▒▒▒▒▒
                         ┃      ┃
                         ⎝▁▁〇▁▁⎠


""")

slowPrint(text: "As tochas do lado de fora se apagaram subitamente, uma a uma, e uma porta enorme se abriu com agressividade. Lá dentro está muito escuro.")

slowPrint(text: "ENTRAR.")

slowPrint(text: "Você espanta qualquer medo que ameaçou sentir e atravessa a porta.")

print("""

   ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓██████████████▓▒░░▒▓█▓▒░▒▓█▓▒░
   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░
   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░
   ░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░
   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░
   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
   ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░
 


""")

slowPrint(text:"A porta fechou logo atrás de você, e agora você está preso dentro da tumba.")

slowPrint(text: "Está muito escuro. Você não enxerga um palmo à frente. Talvez você tenha algum item que possa iluminar o lugar.")

slowPrint(text: "ABRIR INVENTÁRIO.")

selectLighter()

print()
slowPrint(text: "Você dá passos furtivos e com cuidado, sempre olhando para todas as direções por precaução. Após uma longa caminhada, você se deparou com um piso elevado e dois caminhos para seguir.")

secondChoice()

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
                    secondRight()
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
            secondRight()
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

secondFloor()



//alavanca
//3 cenoura
//10 moedas
//vela
//armadura
//espada
//cartao de identade




