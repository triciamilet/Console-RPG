//
//  thirdFloor.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 22/05/24.
//

import Foundation

func thirdFloor(){
    slowPrint(text: "Você se direciona para os primeiros degraus e sobe às pressas. Agora você está no terceiro e último andar, cada vez mais próximo de cumprir o seu objetivo.")
    print("""
                                     {} {}
                             !  !  ! II II !  !  !
                          !  I__I__I_II II_I__I__I  !
                          I_╱|__|__|_|| ||_|__|__|╲_I
                       ! ╱|_╱|  |  | || || |  |  |╲_|╲ !
           .--.        I╱╱|  |  |  | || || |  |  |  |╲╲I        .--.
          ╱-   ╲    ! ╱|╱ |  |  |  | || || |  |  |  | ╲|╲ !    ╱=   ╲
          ╲=__ ╱    I╱╱|  |  |  |  | || || |  |  |  |  |╲╲I    ╲-__ ╱
           }  {  ! ╱|╱ |  |  |  |  | || || |  |  |  |  | ╲|╲ !  }  {
          {____} I╱╱|  |  |  |  |  | || || |  |  |  |  |  |╲╲I {____}
    _!__!__|= |=╱|╱ |  |  |  |  |  | || || |  |  |  |  |  | ╲|╲=|  |__!__!_
    _I__I__|  ||╱|__|__|__|__|__|__|_|| ||_|__|__|__|__|__|__|╲||- |__I__I_
    -|--|--|- ||-|--|--|--|--|--|--|-|| ||-|--|--|--|--|--|--|-||= |--|--|-
     |  |  |  || |  |  |  |  |  |  | || || |  |  |  |  |  |  | ||  |  |  |
     |  |  |= || |  |  |  |  |  |  | || || |  |  |  |  |  |  | ||= |  |  |
     |  |  |- || |  |  |  |  |  |  | || || |  |  |  |  |  |  | ||= |  |  |
     |  |  |- || |  |  |  |  |  |  | || || |  |  |  |  |  |  | ||- |  |  |
    _|__|__|  ||_|__|__|__|__|__|__|_|| ||_|__|__|__|__|__|__|_||  |__|__|_
    -|--|--|= ||-|--|--|--|--|--|--|-|| ||-|--|--|--|--|--|--|-||- |--|--|-
    -|--|--|| |  |  |  |  |  |  | || || |  |  |  |  |  |  | ||= |  |  |
    ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^~~~~~~~~~~~
    
    """)
    
    slowPrint(text: "BIIIIIIIIP 🚨. Uma porta enorme se abre na sua frente! Só tem um problema... O salão tem um longo corredor e está cheio de lasers de segurança.")
    
    print("""
          1 - Ir com cuidado
          2 - Enfrentar
          """)
    print()
    
    var porta3 = Int(readLine()!)!
    if(porta3 == 1){
        slowPrint(text: """
        Você anda com bastante cuidado para não ativar nenhum dispositivo de segurança e, de passo em passo, você se aproxima cada vez mais da joia. Com bastante atenção você estica a mão para puxar a joia e...
""")
        slowPrint(text: """
        É FALSA! A jóia se desfaz na sua mão e um barulho ensurdecedor ecoa pelo salão e você encontra um rugido. Tem um esqueleto ENORME atrás de você!
""")
        monsterBig()
    }else if(porta3 == 2){
        slowPrint(text: """
        São lasers demais e talvez o perigo iminente seja devastador, mas você sabe que é melhor do que tudo isso. Você junta toda a sua coragem e corre em linha reta até o cristaleiro que guarda a joia e...
""")
        slowPrint(text: """
                É FALSA! A jóia se desfaz na sua frente e um barulho ensurdecedor ecoa pelo salão e você encontra um rugido. Tem um esqueleto ENORME atrás de você!
""")
        monsterBig()
    }else{
        print("Calma! Não precisa ficar nervoso. Escolha novamente.")
        thirdFloor()
    }
    
}

func monsterBig(){
    
    print("""

                              _.--""-._
  .                         ."         ".
 ╱ ╲    ,^.         ╱(     Y             |      )╲
╱   `---. |--'╲    (  ╲__..'--   -   -- -'""-.-'  )
|        :|    `&gt;   '.     l_..-------.._l      .'
|      __l;__ .'      "-.__.||_.-'v'-._||`"----"
 ╲  .-' | |  `              l._       _.'
  ╲╱    | |                   l`^^'^^'j
        | |                _   ╲_____╱     _
        j |               l `--__)-'(__.--' |
        | |               | ╱`---``-----'"1 |  ,-----.
        | |               )╱  `--' '---'   ╲'-'  ___  `-.
        | |              ╱╱  `-'  '`----'  ╱  ,-'   I`.  ╲
      _ L |_            ╱╱  `-.-.'`-----' ╱  ╱  |   |  `. ╲
     '._' ╱ ╲         _╱(   `╱   )- ---' ;  ╱__.J   L.__.╲ :
      `._;╱7(-.......'  ╱        ) (     |  |            | |
      `._;l _'--------_╱        )-'╱     :  |___.    _._.╱ ;
        | |                 .__ )-'╲  __  ╲  ╲  I   1   ╱ ╱
        `-'                ╱   `-╲-(-'   ╲ ╲  `.|   | ,' ╱
                           ╲__  `-'    __╱  `-. `---'',-'
                              )-._.-- (        `-----'
                             )(  l╲ o ('..-.
                       _..--' _'-' '--'.-. |
                __,,-'' _,,-''            ╲ ╲
               f'. _,,-'                   ╲ ╲
              ()--  |                       ╲ ╲
                ╲.  |                       ╱  ╲
                  ╲ ╲                      |._  |
                   ╲ ╲                     |  ()|
                    ╲ ╲                     ╲  ╱
                     ) `-.                   | |
                    ╱╱ .__)                  | |
                 _.╱╱7'                      | |
               '---'                         j_| `
                                            (| |
                                             |  ╲
                                             |lllj
                                             |||||


""")
    
    slowPrint(text: """
    MUAHAHAHAHAHAAA!! Voce achou que seria facil assim??

    Estamos só começando!

    Eu estava me divertindo muito observando voce passar por todas as minhas salas, mas voce sabia que isso eh invasao de privacidade? E EU ODEIO ISSO!!! Agora voce vai fazer por merecer

""")
    
    combat2(player1: &esqueleto, player2: &coelho2)
    
    
    
}


