//
//  main.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 10/05/24.
//
import Foundation


var inventoryList: [(qty: Int, item: String)] = []
var alavanca = false
inventoryList.append((10, "Moedas de Ouro"))
inventoryList.append((1, "Isqueiro"))
inventoryList.append((2, "Cenoura"))

func buscarIndice (item: String) -> Int? {
    
    for i in 0..<inventoryList.count {
        if inventoryList[i].item == item {
            return i;
        }
    }
    
    return nil;
    
}


//Adicionar uma introdução animada

print()
print("                                                                          ".bgRed())
print()

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

slowPrint(text: "A construção é monumental e quase que etérea, você não consegue imaginar como que isso tudo poderia ter sido construído por seres vivos mortais. Você olha para cima para ver a imensidão e o prédio some em meio às nuvens.")

slowPrint(text: "Você anda em volta e analisa as paredes, parece que não há portas. Mas deve haver um meio de entrar.")



firstChoice()

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
secondFloor()

