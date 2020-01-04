//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page7Narrative")
 Comme vous l'avez découvert, malgré sa petite taille, le micro:bit regorge de fonctionnalités et de capteurs et il y a encore plus à découvrir.

 Le micro:bit est capable de lire la température de son environnement. La température fournie est en fait la température du CPU. Comme le processeur fonctionne généralement à froid, la température est une bonne approximation de la température ambiante. Nous pouvons l'utiliser pour créer un simple thermomètre. Cette activité ne peut pas être effectuée sans un micro:bit.

 Sur l'écran ci-contre - vous pouvez voir la température du micro:bit affichée.

 Regardez le code ci-dessous. Le code a déjà été écrit pour détecter la température en degrés centigrades. La première fonction définit la fréquence de lecture de la température, dans ce cas, la valeur de 5000 signifie 5 secondes.

 La deuxième fonction est un *gestionnaire* qui est appelé toutes les 5 secondes avec une mise à jour de la température. La valeur de la température est retournée en Celsius / ºC. La température est ensuite convertie en `Int` et affichée sur l'écran LED.

 1. Exécutez le code.

 2. Regardez l'affichage sur votre micro:bit. Vous devriez voir défiler un nombre qui est la température en ºC du CPU.

 3. Placez le micro:bit dans la paume de votre main et placez l'autre main dessus. Tenez-le comme ça pendant 2-3 minutes. Vous pouvez également le tenir près d'une source de chaleur comme un radiateur.

 4. Ouvrez les mains et regardez l'affichage, vous devriez voir que le nombre affiché a changé avec l'augmentation de la température.

 5. Si la température a augmenté, continuez à regarder l'écran et vous devriez voir le nombre redescendre à sa valeur d'origine.

 6. Tout le code ci-dessous peut être édité. Modifiez le code pour convertir la température en ºC en Fahrenheit et affichez-le à la place.

 La formule de conversion est F = C * 9 / 5 + 32
 */
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, ., showImage(), .duck, .sword, .chessboard, .target)

//#-end-hidden-code
//#-editable-code
clearScreen()

setTemperaturePeriod(5000, handler: {(period: Int?) in
    let periodinMS = period
})

onTemperature({(temperature: Double) in
    let celsius = temperature
    showNumber(Int(celsius))
})

//#-end-editable-code
