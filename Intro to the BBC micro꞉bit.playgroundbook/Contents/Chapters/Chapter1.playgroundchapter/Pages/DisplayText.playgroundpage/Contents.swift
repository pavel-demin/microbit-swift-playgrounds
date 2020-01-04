//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page1Narative")
 Peut-être la caractéristique la plus notable du BBC micro:bit est son écran LED 5 x 5.
 Vous pouvez écrire des programmes pour allumer chaque LED individuellement.
 Voyons comment procéder en apprenant d'abord comment afficher du texte sur le micro:bit. Le texte est affiché de deux manières, selon le nombre de lettres.

 1. Exécutez le code ci-dessous et notez ce qui se passe.
 2. Remplacez la lettre `M` par une autre lettre UNIQUE.
 3. Exécutez à nouveau le code.
 4. Notez que lorsque le micro:bit affiche UNE lettre, la lettre s'affiche en permanence.
 5. Remplacez maintenant la lettre unique par une phrase de votre choix - par exemple `Bonjour le Monde`.
 6. Notez maintenant que lorsque plusieurs lettres sont affichées, elles défilent sur l'écran une lettre à la fois.

 Cette activité est un excellent moyen d'utiliser le micro:bit comme badge nominatif. Voyez si vous pouvez penser à d'autres façons d'appliquer le texte défilant.
 */
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, displayText(_:))

//#-end-hidden-code
let textToDisplay = /*#-editable-code text to display*/"M"/*#-end-editable-code*/
showString(textToDisplay)
