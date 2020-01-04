//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page8Narrative")
 Vous remarquerez qu'en traversant le bas du BBC micro:bit, il y a des nombres **0**, **1**, **2**, **3V** et **GND**. Celles-ci sont appelées *broches* et elles nous fournissent un autre moyen d'interagir avec le micro:bit.

 Elles sont conçues pour accueillir *des pinces crocodiles* et *des fiches bananes*. Si vous en avez à portée de main, ils facilitent légèrement cet exercice, mais ils ne sont pas nécessaires.

 Contrairement au reste du micro:bit ces broches ne sont pas recouvertes de peinture, elles sont laissées en métal nu. Cela signifie que lorsqu'ils sont touchés par nos doigts, un petit courant circule qui peut être détecté par le micro:bit.

 Comme vous l'avez peut-être appris en science; pour créer un circuit, une boucle complète doit être créée et c'est là que le **GND** entre en jeu. Pour connecter les broches, vous devez *pincer* **GND** d'une main et *pincer* l'une des broches  numérotées avec votre autre main.

 1. Regardez le code ci-dessous. Avant de pouvoir l'exécuter, nous devons spécifier les broches que nous souhaitons utiliser.

 2. Dans la fonction `onPinPressed`, tapez sur la case intitulée **pin** et choisissez l'une des broches dans la barre de complétion.

 3. Répétez cette opération pour le prochain gestionnaire `onPinPressed`, mais assurez-vous d'utiliser une broche différente de celle ci-dessus.

 4. Exécutez le code.

 5. Pincez la broche **GND** entre votre pouce et votre index et, avec l'autre main, pincez l'une des broches que vous avez choisies ci-dessus.

 6. Que se passe-t-il? Vous devriez voir l'une des formes affichées sur l'écran LED.

 7. Pincez l'autre broche que vous avez choisie et observez ce qui se passe.
*/
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, pin0, pin1, pin2)

//#-end-hidden-code

clearScreen()
onPinPressed(./*#-editable-code*/<#T##pin##BTMicrobit.Pin#>/*#-end-editable-code*/, handler: {
    //#-editable-code
    iconImage(.target).showImage()
    //#-end-editable-code
})
onPinPressed(./*#-editable-code*/<#T##pin##BTMicrobit.Pin#>/*#-end-editable-code*/, handler: {
    //#-editable-code
    iconImage(.chessboard).showImage()
    //#-end-editable-code
})
