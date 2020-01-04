//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page3Narrative")
 De chaque côté de l'écran LED 5 x 5, le BBC micro:bit a deux boutons, l'un est étiqueté **A**, l'autre **B**.

 Nous pouvons utiliser ces boutons pour effectuer différentes fonctions.

 Utilisons ce que nous avons appris dans les deux leçons précédentes pour voir comment les boutons fonctionnent.

 Pour cet exercice, vous allez afficher un message texte lorsque vous appuyez sur le bouton **A** et afficher une forme (ou *icône*) lorsque vous appuyez sur le bouton **B**.

 1. Dans le code ci-dessous, recherchez la case à côté de la première apparition de `bouton` et tapez `A` ou choisissez **A** dans la barre de complétion.

 2. Dans la ligne en dessous, cliquez dans la case qui dit `Bonjour le Monde` et écrivez votre propre message court.

 4. Recherchez maintenant la prochaine apparition du mot `bouton` et tapez `B` ou choisissez **B** dans la barre de complétion.

 5. Dans la ligne en dessous, cliquez dans la case de l'icône `heart`. Choisissez une forme différente si vous le souhaitez dans la barre de complétion.

 6. Exécutez le code. Initialement, rien ne se passe, sauf effacer l'écran afin qu'il soit vide. Le micro:bit attend qu'un *événement de bouton* se produise.

 7. Appuyez sur le bouton **A** pour voir le défilement du texte et sur le bouton **B** pour afficher l'icône de votre choix.

 8. Revenez à votre code et changez votre programme pour afficher le texte lorsque le bouton **B** est enfoncé et une icône lorsque le bouton **A** est enfoncé.

 9. Exécutez votre code pour voir ce qui se passe.

 */
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, A, B)
//#-code-completion(identifier, show, duck, happy, target, chessboard, rabbit, giraffe)

//#-end-hidden-code

clearScreen()
onButtonPressed(./*#-editable-code*/<#T##button##BTMicrobit.Button#>/*#-end-editable-code*/, handler: {
    let textToDisplay = /*#-editable-code text to display*/"Bonjour le Monde"/*#-end-editable-code*/
    showString(textToDisplay)
})
onButtonPressed(./*#-editable-code*/<#T##button##BTMicrobit.Button#>/*#-end-editable-code*/, handler: {
    let imageToDisplay = iconImage(./*#-editable-code icon name*/heart/*#-end-editable-code*/)
    imageToDisplay.showImage()
})
