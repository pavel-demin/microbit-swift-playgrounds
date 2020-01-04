//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page4Narrative")
 C'est vraiment amusant d'écrire des jeux sur le BBC micro:bit, et l'un des plus simples est **Pierre, Papier, Ciseaux** qui est un super jeu pour deux joueurs.

 Ce programme utilisera une fonction *aléatoire* qui choisira un nombre aléatoire et affichera la forme que nous avons choisi d'associer à ce nombre. Dans ce cas:
 1 = Pierre,
 2 = Papier,
 3 = Ciseaux.
 Nous aurons donc besoin que notre plage de nombres aléatoires soit comprise entre 1 et 3.

 1. Tout comme vous l'avez fait dans l'activité précédente, vous devez choisir un bouton qui activera le jeu. Recherchez la fonction `onButtonPressed` et choisissez d'utiliser l'un des boutons **A** ou **B**. Lorsque votre jeu est terminé à chaque fois que vous appuyez sur ce bouton, le code animera un poing avant d'afficher au hasard de la roche, du papier ou des ciseaux.

 2. Dans le code de la fonction `random`, il y a 2 cases pour spécifier la plage de nombres aléatoires générés.

 3. Dans la première case intitulée `borne inférieure`, choisissez `1` et pour la `borne supérieure`, choisissez `3`. La fonction `random` sélectionne alors un nombre aléatoire compris entre 1 et 3.

 4. Dans la ligne qui dit `if randomNumber == 1` appuyez sur `image` et choisissez **rock** dans la barre de complétion.

 5. Dans la ligne qui dit `if randomNumber == 2` appuyez sur `image` et choisissez **paper** dans la barre de complétion.

 6. Dans la ligne qui dit `if randomNumber == 3` appuyez sur `image` et choisissez **scissors** dans la barre de complétion.

 7. Exécutez votre code.

 8. Appuyez sur le bouton que vous avez choisi à l'étape 1.

 9. Répétez plusieurs fois l'étape 8 et notez que la forme affichée sur votre micro:bit doit changer de façon aléatoire entre la roche, le papier et les ciseaux.

 Maintenant, vous pouvez jouer au Pierre, Papier, Ciseaux avec quelqu'un d'autre s'il a également terminé cet exercice. Ou si vous êtes seul, pourquoi ne pas utiliser votre micro:bit pour vous mesurer à vous-même?

 Le meilleur des cinq gagne!
 */
//#-hidden-code
import PlaygroundSupport
import Foundation

func random(in range: ClosedRange<Int>) -> Int {
    return range.lowerBound + Int(arc4random_uniform(UInt32(range.count)))
}

let rock = createImage("""
.###.
####.
.####
.###.
####.
""")

let paper = createImage("""
####.
#####
#####
#####
#####
""")

let scissors = iconImage(.scissors)

let fist = createImage("""
...#.
.###.
.####
.###.
.##..
""")

func animateFist() {
    for _ in 1...3 {
        for loop in 1...11 {
            let yOffset = loop < 6 ? 6 - loop : loop - 6
            let imageToDisplay = fist.imageOffsetBy(dy: yOffset)
            imageToDisplay.showImage()
            usleep(75_000)
        }
    }
}

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, A, B)
//#-code-completion(identifier, show, rock, paper, scissors)
//#-code-completion(identifier, hide, animateFist(), fist, randomNumber, random(in:))

//#-end-hidden-code
clearScreen()
onButtonPressed(./*#-editable-code*/<#T##button##BTMicrobit.Button#>/*#-end-editable-code*/, handler: {
    animateFist()
    let randomNumber = random(in: /*#-editable-code*/<#T##borne inférieure##Int#>/*#-end-editable-code*/.../*#-editable-code*/<#T##borne supérieure##Int#>/*#-end-editable-code*/)
    if randomNumber == 1 {
        /*#-editable-code*/<#T##image##MicrobitImage#>/*#-end-editable-code*/.showImage()
    }
    if randomNumber == 2 {
        /*#-editable-code*/<#T##image##MicrobitImage#>/*#-end-editable-code*/.showImage()
    }
    if randomNumber == 3 {
        /*#-editable-code*/<#T##image##MicrobitImage#>/*#-end-editable-code*/.showImage()
    }
})
