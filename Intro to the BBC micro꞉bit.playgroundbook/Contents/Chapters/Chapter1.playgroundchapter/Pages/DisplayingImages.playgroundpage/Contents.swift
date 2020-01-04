//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page2Narrative")
 Comme vous l'avez vu, les LEDs du BBC micro:bit peuvent être allumées pour afficher du texte.

 Dans l'exercice précédent, nous avons affiché des lettres à l'écran. Mais que se passe-t-il si nous voulons afficher des formes autres que des lettres?

 Le micro:bit peut également afficher des *images*, où chacune des LEDs est allumée ou éteinte pour créer une forme.

 Essayons cela.

 1. Exécutez le code ci-dessous.

 2. Notez que le micro:bit affiche une forme *coeur*.

 3. Pour cet exercice, certaines images ont été créées pour vous. Cliquez sur le texte `heart` dans la fonction `iconImage` et vous verrez une liste de 6 autres images qui peuvent être affichées dans la barre de complétion du clavier.

 4. Sélectionnez une image dans la liste.

 5. Exécutez à nouveau votre code.

 6. Répétez les étapes 4 et 5 jusqu'à ce que vous ayez essayé chaque forme différente.

 Était-il évident pour vous ce que chaque forme était censée représenter?

 Une fois que vous maîtrisez l'utilisation du petit espace, vous pouvez créer de nombreuses formes et histoires différentes avec juste l'affichage du micro:bit. Par exemple, une fois que vous en saurez plus sur le micro:bit, il serait possible d'écrire un programme pour afficher un coeur à chaque fois que vous faites un pas, ou de raconter une histoire interactive.
*/
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, duck, happy, target, chessboard, rabbit, giraffe)

//#-end-hidden-code
let imageToDisplay = iconImage(./*#-editable-code icon name*/heart/*#-end-editable-code*/)
imageToDisplay.showImage()
