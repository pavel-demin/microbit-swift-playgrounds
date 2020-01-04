//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page5Narrative")
 L'une des nombreuses fonctionnalités intéressantes du BBC micro:bit est les nombreuses façons dont vous pouvez interagir avec lui pour lui faire faire des choses.

 Nous avons déjà vu comment le fait d'appuyer sur des boutons peut faire fonctionner le micro:bit, mais il existe également d'autres moyens.

 Tout comme les smartphones et les tablettes, le micro:bit a un *accéléromètre* intégré qui détermine le mouvement d'inclinaison et l'orientation de l'appareil. Cela signifie qu'il peut dire comment il est orienté dans l'espace.

 Ainsi, l'accéléromètre peut être utilisé pour faire le micro:bit détecter lorsqu'il est déplacé, ou dans ce cas, secoué.
 
 Pour ce faire, revenons au jeu Pierre, Papier, Ciseaux que vous avez développé dans la leçon précédente. Dans ce programme, vous deviez appuyer sur un bouton pour exécuter le code, mais ce serait beaucoup plus amusant (et réaliste) si vous pouviez faire réagir le micro:bit chaque fois que vous le *secouez*.

 1. Regardez la version légèrement modifiée du programme Pierre, Papier, Ciseaux précédent ci-dessous.

 2. Cliquez pour sélectionner le texte de la fonction `onButtonPressed`. Changez cette fonction en `onGesture`.

 3. Tapez dans la case où vous voyez `geste` et sélectionnez **shake** dans la barre de complétion du clavier, ou tapez `shake` si vous le souhaitez.

 4. Remplissez les cases restantes d'une manière similaire à l'activité Pierre, Papier, Ciseaux précédente.

 5. Exécutez votre code.

 6. Secouez votre micro:bit (ou l'iPad si vous n'utilisez pas un micro:bit) et notez comment il réagit.

 7. Répétez l'étape 6 plusieurs fois et notez que la forme affichée sur votre micro:bit devrait changer de façon aléatoire entre la forme de la pierre, du papier et des ciseaux.

 Il existe de nombreuses façons d'utiliser l'accéléromètre sur un micro:bit et dans le prochain exercice, nous verrons une application différente pour cette fonctionnalité utile.
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
//#-code-completion(identifier, show, onGesture)
//#-code-completion(identifier, show, shake)
//#-code-completion(identifier, show, rock, paper, scissors)
//#-code-completion(identifier, hide, animateFist(), fist, randomNumber, random(in:))

//#-end-hidden-code
clearScreen()
/*#-editable-code*/onButtonPressed/*#-end-editable-code*/(./*#-editable-code*/<#T##geste##BTMicrobit.Event.Gesture#>/*#-end-editable-code*/, handler: {
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
