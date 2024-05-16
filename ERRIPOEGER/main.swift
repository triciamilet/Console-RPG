//
//  main.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 10/05/24.
//

import Foundation


//Game's func

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



inventoryList.append((1, "Isqueiro"))
inventoryList.append((2, "Cenoura"))
inventoryList.append((10, "Moedas de Ouro"))

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
        slowPrint(text:"Você força a vista e tenta identificar alguma coisa nos desenhos da parede. Tudo empoeirado. Você encontra um espaço que parece algum tipo de encaixe, talvez a alavanca sirva para isso. Você encaixa a alavanca e puxa para baixo.")
        
    } else {
        slowChoice(text:"Você força a vista e tenta identificar alguma coisa nos desenhos da parede. Tudo empoeirado. Você encontra um espaço que parece algum tipo de encaixe, mas não parece ser útil por enquanto.")
        firstChoice()
    }
    break
    
case 4:
    slowChoice(text:"Boa tentativa, mas não tem sinal de internet por aqui. Continua tentando")
    print()
    firstChoice()
    print()
    break
    
default:
    slowChoice(text: "meu querido voce andou em circulos e nao chegou a lugar nenhum. Tentar de novo.")
    print()
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

switch number{
    
case 1:
    slowChoice (text:"É UMA ARMADILHA! Flechas estão tentanto te atingir! PENSE RÁPIDO!")
    
    print("""
    1 - ESQUERDA!
    2 - DIREITA!
    """)

    
//    if (sleep: 5) {
//        
//    } else {
        var dec = Int(readLine()!)
        if (dec == 1) {
            print("Você se depara")
        } else {
            print("Você encontra")
        }
//    }
    break
    
case 2:
    slowChoice(text:"Com muito cuidado para não pisar em cima, você desvia e segue em frente.")
    
    print("""
    1 - Esquerda.
    2 - Direita.
    """)
    
    var dec = Int(readLine()!)
    if (dec == 2) {
        print("Você se depara")
    } else {
        print("Você encontra")
    }
    
    break
    
default:
    slowChoice(text: "meu querido voce andou em circulos e nao chegou a lugar nenhum. Tentar de novo.")
    print()
    secondChoice()
    print()
    break
    }
}





//alavanca
//3 cenoura
//10 moedas
//vela
//armadura
//espada
//cartao de identade




