//
//  main.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 10/05/24.
//

import Foundation

slowPrint(text: "No mundo de Wald, a única forma de sobrevivência é arriscando a sua própria vida. Os mais ricos da sociedade pagam qualquer um para fazer o que eles quiserem, e eles sempre querem o pior, pedem coisas que eles próprios não tem coragem de fazer.")
print(" ▼")
readLine()
slowPrint(text: "Você é o agente Coelho, um dos milhares caçadores de recompensa. Após terminar a sua missão mais recente, você foi até o painel de solicitações para aceitar a próxima.")
print(" ▼")
readLine()
slowPrint(text: "No painel, tem uma missão de alto risco. O objetivo é recuperar uma joia valiosa que está localizada em uma tumba no deserto de Skarlet. O risco é alto, mas a recompensa é maior ainda.")
print(" ▼")
readLine()

print("""
        ┏━━━━━━┓                       ┏━━━━━━┓
┏━━━━━━━┻━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━┻━━━━━┓
┃    __  __ ___ ____ ____   ___  _____ ____         ┃
┃    |  ╲╱  |_ _/ ___/ ___| / _ \| ____/ ___|       ┃
┃    | |\╱| || |\___ \___ \┃ | | |  _| \___ ╲       ┃
┃    | |  | || | ___) |__) | |_| | |___ ___) |      ┃
┃    |_|  |_|___|____/____/ \___/|_____|____/       ┃
┃                                                   ┃
┃       ┏━━━━━┓                     ┏━━━━━┓         ┃
┃   ┏━━━┻━┓   ┃  ┏━━━━━┓            ┃     ┃         ┃
┃   ┃     ┃   ┃  ┃    ┏┻━━━━┓       ┃     ┃         ┃
┃   ┃     ┃   ┃  ┃┏━━━┻━┓   ┃       ┃     ┣━━━━━┓   ┃
┃   ┃    ┏┻━━━━┓ ┃┃     ┃   ┃       ┗━━━━━┫     ┃   ┃
┃   ┗━━━━┫     ┃ ┗┃     ┃   ┃             ┃     ┃   ┃
┃        ┃     ┃  ┃     ┣━━━┛             ┃     ┃   ┃
┃        ┃     ┃  ┗━━━━━┛                 ┗━━━━━┛   ┃
┃        ┗━━━━━┛                                    ┃
┗━━━━━━┳━━━━━━┳━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━┳━━━━━━┛
       ┃      ┃                       ┃      ┃
       ┊      ┊                       ┊      ┊
""")

//Game's func
func slowPrint(text: String) {
    let separatedText = text.split(separator: " ")
    setbuf(__stdoutp, nil) //To not bug the Console
    for word in separatedText {
        print(word, terminator: " ")
        usleep(100000)
    }
}
