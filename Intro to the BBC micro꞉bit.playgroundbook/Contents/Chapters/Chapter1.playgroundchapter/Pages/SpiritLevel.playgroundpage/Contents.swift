//#-hidden-code
//
//  Contents.swift
//
//#-end-hidden-code
/*:#localized(key: "Page6Narrative")
 Dans l'exercice précédent, vous avez vu comment l'accéléromètre intégré du BBC micro:bit peut être utilisé pour détecter un mouvement de secousse. Ce n'est pas la seule façon d'utiliser l'accéléromètre du micro:bit.

 L'accéléromètre mesure l'orientation du micro:bit en trois dimensions: **x**, **y** et **z**. Nous pouvons l'utiliser pour déterminer si le micro:bit est *incliné* ou *plat*.

 Une application pratique de ceci est un *niveau à bulle*. Lorsque le micro:bit est plat, la LED centrale sera allumée, mais lorsque l'appareil est incliné, il affichera une LED plus loin vers le bord; comme la bulle dans un niveau à bulle.

 1. Regardez l'écran ci-contre. Lorsque vous inclinez votre micro:bit (ou votre iPad si vous n'avez pas de micro:bit connecté), vous verrez les valeurs d'accélération changer. Celles-ci représentent dans quelle mesure le micro:bit est incliné dans chaque direction.

 2. Exécutez le code ci-dessous.

 3. Inclinez votre micro:bit d'un côté à l'autre et regardez comment les valeurs changent. Pour chaque axe, les valeurs varient entre -1000 et +1000. Cette mesure est en *milli-gravité*. Une valeur de 1000 (1 gravité) représente la pleine force de gravité agissant le long de cet axe du micro:bit. Si vous inclinez l'iPad, il peut être utile d'activer d'abord le verrouillage d'orientation.

 4. Essayez de placer la LED allumée au centre de l'écran 5 x 5.

 5. Regardez le code ci-dessous.

 6. Le code réagit à l'orientation de l'appareil le long de l'axe x. Nous lisons la valeur de `x` dans les `accelerationValues`, puis déterminons laquelle des LEDs horizontales au centre de l'écran doit être allumée. La ligne médiane est l'endroit où y est 2.

 7. Tout le code ci-dessous est entièrement modifiable.

 8. Modifiez le code pour que le micro:bit soit plus sensible à l'inclinaison.

 9. Vous devez réexécuter le code chaque fois que vous le modifiez.

 10. Essayez de changer le code pour qu'il lise le `y` de `accelerationValues`, puis changez également la LED le long de l'axe y. Vous pouvez sélectionner des blocs de code à copier et coller.

 Maintenant que vous maîtrisez l'accéléromètre, vous pouvez l'utiliser pour d'autres choses. Par exemple, il pourrait être utilisé pour créer un jeu dans lequel le micro:bit est utilisé pour une simulation de conduite.
 */
//#-hidden-code
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)

setAccelerometerPeriod(.ms160)

//#-end-hidden-code
//#-editable-code
let image = MicrobitImage()
var lastX = 2
image.plot(x: lastX, y: 2)
image.showImage()
onAcceleration({(accelerationValues) in
    let x = accelerationValues.x
    var xToPlot = 2
    if x < -300 { xToPlot = xToPlot + 1}
    if x < -700 { xToPlot = xToPlot + 1}
    if x > 300 { xToPlot = xToPlot - 1}
    if x > 700 { xToPlot = xToPlot - 1}

    if xToPlot != lastX {
        image.unplot(x: lastX, y: 2)
        image.plot(x: xToPlot, y: 2)
        image.showImage()
        lastX = xToPlot
    }
})
//#-end-editable-code
