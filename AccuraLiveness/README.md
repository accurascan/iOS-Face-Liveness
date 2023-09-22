# AccuraScan's iOS SDK for Liveness Check


 User Authentication and Liveness Check Is Used for Customer Verification and Authentication. It Protects You from Identity Theft & Spoofing Attacks Through the Use of Active and Passive Selfie Technology for Liveness Check.<br/>


Below steps to setup Accura SDK's in your project.
1. install Git LFS using command `install git-lfs` 

2. Add below pod in podfile
```
    # install the AccuraLiveness_FM pod for AccuraLiveness And AccuraFacematch both.</br>
    pod 'AccuraLiveness_FM', '4.2.6'
```
  Note:-If you want to use Framework instead of pods, you can use the below git link, You can clone the project and take the respective .framework file

  * [Accura Liveness and Face Match](https://github.com/accurascan/Accura-iOS-SDK-FM-Liveness)
  
  Note:- If you are using frameworks, you need to add the pods present in their respective .podspec file (e.g spec.dependency 'SVProgressHUD' as pod 'SVProgressHUD')

3. Run `pod install`

Note :- after pod install, make sure to check the pod size as mentioned below </br>

* If you are using `AccuraLiveness_FM` pod </br>
   ` your Project's root dicrectory/Pods/AccuraLiveness_FM/Framework/AccuraLiveness_FM.framework` </br>
    the `AccuraLiveness_FM.framework` size should be around 160 MB
    
    
            

 4. Solving pod issue (follow this step only if pod size doesnt match as said in point 3) </br>
     i.   Clean the pod using `pod clean` command </br>
     ii.  install Git LFS using `install git-lfs` command </br>
     iii. Run `pod install` </br>

 5. Run the App in Simulator.  ( Optional )</br>
 Note:- Comment the previous pods and use the below pods to run the app in simulator. </br>
```
    # install the AccuraLiveness_FM pod for AccuraLiveness And AccuraFacematch both.</br>
    pod 'AccuraLiveness_FM_Sim', '4.2.4'
```
  Note:-If you want to use Framework instead of pods, you can use the below git link. You can clone the project and take the respective .framework file

  * [Accura Liveness and Face Match Simulator](https://github.com/accurascan/Accura-iOS-SDK-FM-Liveness/tree/sim)
  
  Note:- If you are using frameworks, you need to add the pods present in their respective .podspec file (e.g spec.dependency 'SVProgressHUD' as pod 'SVProgressHUD')

## Setup Accura liveness

Contact to  [connect@accurascan.com](mailto:connect@accurascan.com)  to get Url for liveness </br>
Step 1: Open camera for liveness Detectcion.

* import the module name  `import AccuraLiveness_fm`  if you are using `AccuraLiveness_FM` pod


* Setup auto capture Camera

```
//set liveness url
var liveness = Liveness()
liveness.setLivenessURL("/*Your URL*/")

// To customize your screen theme and feed back messages
liveness.setBackGroundColor("#C4C4C5")
liveness.setCloseIconColor("#000000")
liveness.setFeedbackBackGroundColor("#C4C4C5")
liveness.setFeedbackTextColor("#000000")
liveness.setFeedbackTextSize(Float(18.0))
liveness.setFeedBackframeMessage("Frame Your Face")
liveness.setFeedBackAwayMessage("Move Phone Away")
liveness.setFeedBackOpenEyesMessage("Keep Open Your Eyes")
liveness.setFeedBackCloserMessage("Move Phone Closer")
liveness.setFeedBackCenterMessage("Center Your Face")
liveness.setFeedbackMultipleFaceMessage("Multiple face detected")
liveness.setFeedBackFaceSteadymessage("Keep Your Head Straight")
liveness.setFeedBackLowLightMessage("Low light detected")
liveness.setFeedBackBlurFaceMessage("Blur detected over face")
liveness.setFeedBackGlareFaceMessage("Glare detected")

// 0 for clean face and 100 for Blurry face
liveness.setBlurPercentage(80) // set blure percentage -1 to remove this filter

// Set min and max percentage for glare
liveness.setGlarePercentage(6, 99) //set glaremin -1 and glaremax -1 to remove this filter

// if you want to enable SSL certificate pinning for Liveness API set it true. 
// if 'evaluateServerTrustWIthSSLPinning()' is true must have to add SSL Certificate of Your liveness API Server in Your Proeject's Root directory
liveness.evaluateServerTrustWIthSSLPinning(true)
```

Step 2: Handle Accura liveness Result
```
// it calls when get liveness result
func livenessData(_ stLivenessValue: String, livenessImage: UIImage, status: Bool){
}

// it calls when liveness camera view dissappear
func livenessViewDisappear() {
}
```

