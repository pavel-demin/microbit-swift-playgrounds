//#-hidden-code
//
//  LiveView.swift
//
//#-end-hidden-code

import PlaygroundSupport
import UIKit

let page = PlaygroundPage.current
let liveViewContainerController = LiveViewContainerController.controllerFromStoryboard("LiveView")
liveViewContainerController.addMicrobitMeasurement(.accelerationX(.microbitGravity))
liveViewContainerController.addMicrobitMeasurement(.accelerationY(.microbitGravity))
liveViewContainerController.addMicrobitMeasurement(.accelerationZ(.microbitGravity))
liveViewContainerController.addMicrobitMeasurement(.temperature(.fahrenheit))
liveViewContainerController.addMicrobitMeasurement(.bearing(.degrees))
page.liveView = liveViewContainerController
