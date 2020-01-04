//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "PageLEDNarrative")
 Jusqu'à présent, nous nous sommes amusés avec les images intégrées sur le micro:bit et avons fait défiler du texte.

 Essayons de créer nos propres formes! Pour ce faire, nous devons indiquer au micro:bit quelles LEDs seront allumées et lesquelles seront éteintes.

 Si vous exécutez le code ci-dessous, vous verrez qu'il montre toujours la forme d'un coeur, mais cette fois plutôt que d'utiliser l'image nommée `heart`, nous utilisons les caractères `X` et `.` pour représenter les LEDs qui sont soit *allumées* ou *éteintes*.

 C'est votre chance de faire preuve de créativité - que pouvez-vous dessiner sur l'écran du micro:bit? Modifiez le code ci-dessous pour changer les LEDs allumées ou éteintes.

 Si vous avez du papier à portée de main, pourquoi ne pas dessiner une grille 5 x 5 et voir quelles autres formes vous pouvez faire dans une si petite grille.

 Et voici un défi: pouvez-vous ajouter des images et en faire une petite animation?
 */
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)

//#-end-hidden-code
//#-editable-code
let frameOne = MicrobitImage("""
. X . X .
X X X X X
X X X X X
. X X X .
. . X . .
""")
//#-end-editable-code
frameOne.showImage()
