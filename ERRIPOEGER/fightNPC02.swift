//
//  fightNPC02.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 23/05/24.
//

import Foundation

// Criando os NPCs
var npcEsqueleto = Combate(name: "ESQUELETO 💀", hp: 50)
var npcCoelho = Combate(name: "VOCÊ 🐇 ", hp: 50)

// Estrutura para representar um personagem
struct Combate {
    var name: String
    var hp: Int

    // Método para imprimir o estado atual do personagem
    func printStatus() {
        print("\(name): HP \(hp)")
    }
    
    //Metodo para imprimir a imagem do coelho
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
                
        """)
    }
    
    func esqueleto(){
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
        """)

    }
}

// Função para simular um combate entre dois personagens
func combat2(esqueleto: inout Combate, coelho: inout Combate) {
    print("Iniciando o combate entre \(esqueleto.name) e \(coelho.name)!")
    print("-----------------------------------------")
    
    // Loop de combate até que um dos personagens fique sem HP
    while esqueleto.hp > 0 && coelho.hp > 0 {
        // Simulando ataques
        let damage1 = Int.random(in: 1...7)
        let damage2 = Int.random(in: 1...7)
        
        // Aplicando danos
        coelho.hp -= damage1
        esqueleto.hp -= damage2
        
        
        // Imprimindo o estado atual dos personagens
        print("\(esqueleto.name) ataca \(coelho.name) e causa \(damage1) de dano.")
        coelho.rabbit2()
        coelho.printStatus()
        
        readLine()
        
        print()
        
        print("\(coelho.name) ataca \(esqueleto.name) e causa \(damage2) de dano.")
        esqueleto.esqueleto()
        esqueleto.printStatus()
        print("-----------------------------------------")
    }
    
    // Determinando o vencedor
    if esqueleto.hp <= 0 {
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
        """)
        
        slowPrint(text: "Parabens \(coelho.name) venceu o combate!")
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
                                                               
                                           
""")
        
    } else {
        print("\(esqueleto.name) venceu o combate!")
    }
}
