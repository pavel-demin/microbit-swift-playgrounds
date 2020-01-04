//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "FirstProseBlock")
 Bienvenue sur le Swift Playground pour découvrir le micro:bit.

 Commençons par envoyer un court message texte au micro:bit pour l'afficher sur le panneau LED.

 1. Exécutez le code ci-dessous pour voir le texte affiché.
 2. Dans le code, appuyez sur la case `Bonjour le Monde` pour modifier le texte qui sera affiché.
 3. Réexécutez le code pour voir votre propre message.
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, displayText(_:))

//#-end-hidden-code
let textToDisplay = /*#-editable-code text to display*/"Bonjour le Monde!"/*#-end-editable-code*/
showString(textToDisplay)
