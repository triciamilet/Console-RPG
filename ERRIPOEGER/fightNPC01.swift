//
//  fightNPC01.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 23/05/24.
//

import Foundation
import Foundation

// Criando os NPCs
var aranha = Combate1(name: "ARANHA 🕷️", hp: 20)
var coelho1 = Combate1(name: "VOCÊ 🐇 ", hp: 20)

// Estrutura para representar um personagem
struct Combate1 {
    var name: String
    var hp: Int
    
    //Ingresando texto antes de comecar a luta
    
    
    // Método para imprimir o estado atual do personagem
    func printStatus() {
        print("\(name): HP \(hp)")
    }
    
    //Metodo para imprimir a imagem do player2
    func rabbit(){
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
    
    func spider(){
        print("""
                    $               $
                  $$                 $$
                 $$                   $$
                $$                     $$
                 $$                   $$
             $$  $$                   $$  $$
            $$   $$                   $$   $$
           $$$       $$$  $$$$$  $$$       $$$
            $$$$$$    $$$$$$$$$$$$$   $$$$$$$
                    $$$$$$$$$$$$$$$$
           $$$ $$$$$$$$$$$$$$$$$$$$$$$$$$ $$$
          $$$          $$$$$$$$$$          $$$
         $$         $$$$$$$$$$$$$$$$$        $$
         $$     $$$$$$$$$$$$$$$$$$$$$$$$     $$
        $$     $$$    $$$$$$$$$$$$    $$$     $$
         $$    $$     $$$$$  $$$$$     $$    $$
           $   $$       $$$$$$$$       $$   $
            $  $$                      $$  $
               $$                      $$
                $$                    $$
                  $                   $
        """.blue2())
    }
}

// Função para simular um combate entre dois personagens
func combat1(player1: inout Combate1 , player2: inout Combate1) {
    print("Iniciando o combate entre \(player1.name) e \(player2.name)!")
    print("-----------------------------------------")
    
    // Loop de combate até que um dos personagens fique sem HP
    while player1.hp > 0 && player2.hp > 0 {
        // Simulando ataques
        let damage1 = Int.random(in: 1...4)
        let damage2 = Int.random(in: 1...4)
        
        // Aplicando danos
        player2.hp -= damage1
        player1.hp -= damage2
        
        
        // Imprimindo o estado atual dos personagens
        print("\(player1.name) ataca \(player2.name) e causa \(damage1) de dano.")
        player1.rabbit()
        player2.printStatus()
        
        readLine()
        
        print()
        
        print("\(player2.name) ataca \(player1.name) e causa \(damage2) de dano.")
        player2.spider()
        player1.printStatus()
        print("-----------------------------------------")
    }
    
    // Determinando o vencedor
    if player1.hp <= 0 {
        print("\(player2.name) venceu o combate!")
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
    
    }
    
    
}
func pathFigth(){
    slowPrint(text: "Você tem muita coragem! Essa porta levou você até uma grande teia de ARANHAS!")
    slowPrint(text: "AGORA TEM VÁRIAS ARANHAS INDO ATRÁS DE VOCÊ!")
    slowPrint(text: "Calma! Se você ganhar da Aranha Rainha, poderá continuar o caminho.")
}
