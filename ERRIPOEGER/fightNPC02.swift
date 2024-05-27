//
//  fightNPC02.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 23/05/24.
//

import Foundation


var esqueleto = Combate2(name: "ESQUELETO 💀", hp: 50)
var coelho2 = Combate2(name: "VOCÊ 🐇 ", hp: 50)

// Estrutura para representar um personagem
struct Combate2 {
    var name: String
    var hp: Int
    
    // Método para imprimir o estado atual do personagem
    func printStatus() {
        print("\(name): HP \(hp)")
    }
    
    //Metodo para imprimir a imagem do player2
    func rabbit2(){
        print("""
                   
                                                 .7
                                     __        .'╱
                            ╱╲    .- ╱        ╱ ╱
                           ╱  ; .'  .'       ╱ ╱
                          :   :╱  .'        ╱ ╱
                           ╲  ;-.'         ╱ ╱
              .--¦¦¦¦--..__╱     `.       ╱ ╱
            .'           .'    `๏  ╲     ╱ ╱
           ╱                    `   ;   ╱ ╱
          :                  ╲      :  ╱ ╱
        .-;        -.         `.__.-'__|╱
        :  ;          ╲     ,   ;  ,-╲__╲
        '._:           ;   :   (   |f-"Y╲|
           ╲╱╱  .__    ;    ╲   `-.╲()7L╱
            ;     ¦-,╱_..--¦`-..__)cgD
            '¦¦--.._:
                
        """.yellow2())
    }
    
    func player1(){
        print("""
                                  .7
                                .'╱
                               ╱ ╱
                              ╱ ╱
                             ╱ ╱
                            ╱ ╱
                           ╱ ╱
                          ╱ ╱
                         ╱ ╱
                        ╱ ╱
                      __|╱
                    ,-╲__╲
                    |f-"Y╲|
                    ╲()7L╱
                     cgD                            __ _
                     |╲(                          .'  Y '&gt;,
                      ╲ ╲                        ╱ _   _   ╲
                       ╲╲╲                       )(_) (_)(|}
                        ╲╲╲                      {  4A   } ╱
                         ╲╲╲                      ╲uLuJJ╱╲l
                          ╲╲╲                     |3    p)╱
                           ╲╲╲___ __________      ╱nnm_n╱╱
                           c7___-__,__-)╲,__)(".  ╲_&gt;-&lt;_╱D
                                      ╱╱V     ╲_"-._.__G G_c__.-__&lt;"╱ ( ╲
                                             &lt;"-._&gt;__-,G_.___)╲   ╲7╲
                                            ("-.__.| ╲"&lt;.__.-" )   ╲ ╲
                                            |"-.__"╲  |"-.__.-".╲   ╲ ╲
                                            ("-.__"". ╲"-.__.-".|    ╲_╲
                                            ╲"-.__""|!|"-.__.-".)     ╲ ╲
                                             "-.__""╲_|"-.__.-".╱      ╲ l
                                                   .--,_
                                                  ""  G
        """.white())
        
    }
}

// Função para simular um combate entre dois personagens
func combat2(player1: inout Combate2, player2: inout Combate2) {
    print("Iniciando o combate entre \(player1.name) e \(player2.name)!")
    print("-----------------------------------------")
    
    // Loop de combate até que um dos personagens fique sem HP
    while player1.hp > 0 && player2.hp > 0 {
        // Simulando ataques
        var damage1 = Int.random(in: 1...7)
        var damage2 = Int.random(in: 1...7)
        
        if armor {damage1 = Int.random(in: 1...6)}
        if sword {damage2 = Int.random(in: 2...8)}
        if shield {damage1 = Int.random(in: 0...6)}
        
        // Aplicando danos
        player2.hp -= damage1
        player1.hp -= damage2
        
        
        if let posicaoItem = buscarIndice(item: "Cenoura"), player2.hp <= 99999  {
            inventoryList[posicaoItem].qty -= 1
            
            print("Deseja usar cenouras para recuperar seu HP?")
            print("""
1 - Sim.
2 - Não.
             
""")
            
            let recover = readLine()!
            if let recover2 = Int(recover) {
                if recover2 == 1 {
                    player2.hp += 555
                }
            }
            
        }
        
        // Imprimindo o estado atual dos personagens
        print("\(player1.name) ataca \(player2.name) e causa \(damage1) de dano.")
        player2.rabbit2()
        player2.printStatus()
        
        readLine()
        
        print()
        
        print("\(player2.name) ataca \(player1.name) e causa \(damage2) de dano.")
        player1.player1()
        player1.printStatus()
        print("-----------------------------------------")
    }
    
    // Determinando o vencedor
    if player1.hp <= 0 {
        print("""
                                   ,--.
                                  {    }
                                  K,   }
                                 ╱  `Y`
                            _   ╱   ╱
                           {_'-K.__╱
                             `╱-.__L._
                             ╱  ' ╱`╲_}
                            ╱  ' ╱
                    ____   ╱  ' ╱
             ,-'~~~~    ~~╱  ' ╱_
           ,'             ``~~~%%',
          (                     %  Y
         {                      %% I
        {      -                 %  `.
        |       ',                %  )
        |        |   ,..__      __. Y
        |    .,_.╱  Y ' ╱ ^Y   J   )|
        ╲           |' ╱   |   |   ||
         ╲          L_╱    . _ (_,.'(
          ╲,   ,      ^^""' ╱ |      )
            ╲_  ╲          ╱,L]     ╱
              '-_`-,       ` `   .╱`
                 `-(_            )
                     ^^╲..___,.--`
        """.red2())
        
        slowPrint(text: "Parabens \(player2.name) venceu o combate!")
        slowPrint(text: "Você é digno de receber a joia valiosa 💎 que estava dentro do crânio do monstro. Poucos guerreiros chegaram até aqui. Espero contar com você em uma próxima missão. ATE JÁ!!!!")
        print("""

                                                               
                                                                               
                FFFFFFFFFFFFFFFFFFFFFFIIIIIIIIIIMMMMMMMM               MMMMMMMM
                F::::::::::::::::::::FI::::::::IM:::::::M             M:::::::M
                F::::::::::::::::::::FI::::::::IM::::::::M           M::::::::M
                FF::::::FFFFFFFFF::::FII::::::IIM:::::::::M         M:::::::::M
                  F:::::F       FFFFFF  I::::I  M::::::::::M       M::::::::::M
                  F:::::F               I::::I  M:::::::::::M     M:::::::::::M
                  F::::::FFFFFFFFFF     I::::I  M:::::::M::::M   M::::M:::::::M
                  F:::::::::::::::F     I::::I  M::::::M M::::M M::::M M::::::M
                  F:::::::::::::::F     I::::I  M::::::M  M::::M::::M  M::::::M
                  F::::::FFFFFFFFFF     I::::I  M::::::M   M:::::::M   M::::::M
                  F:::::F               I::::I  M::::::M    M:::::M    M::::::M
                  F:::::F               I::::I  M::::::M     MMMMM     M::::::M
                FF:::::::FF           II::::::IIM::::::M               M::::::M
                F::::::::FF           I::::::::IM::::::M               M::::::M
                F::::::::FF           I::::::::IM::::::M               M::::::M
                FFFFFFFFFFF           IIIIIIIIIIMMMMMMMM               MMMMMMMM
                                                               
                                   
""".red2())
        
        exit(0)
        
    } else {
        print("\(player1.name) venceu o combate!")
        print("""
                          ,-=-.
                         ╱  +  ╲
                         | ~~~ |
                         |R.I.P|
                    ╲vV,,|_____|V,VV,,
             """.red2())
        
        slowPrint(text: "Infelizmente você perdeu. Reabra o jogo para tentar novamente.")
        
        exit(0)
    }
}
