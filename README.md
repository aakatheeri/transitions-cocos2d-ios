transitions-cocos2d-iphone
==========================

Examples of scene replacement transitions using CCTransition in cocos2d for iphone. This small project is made for new cocos2d developers who want know how transition is looks like with watching code of each transition. Current transitions shown on projects are:

- Cross Fade With Duration Transition
- Fade With Color Transition
- Fade With Duration Transition
- Move In With Direction Transition
- Push With Direction Transition
- Reveal With Direction Transition

## Some examples of using transition to replace scene
(These examples is based on Cocos2d v.3)

#### Cross Fade With Duration Transition
```
[[CCDirector sharedDirector] replaceScene:[SceneName scene] withTransition:[CCTransition transitionCrossFadeWithDuration:1]];
```

#### Fade With Color Transition
```
[[CCDirector sharedDirector] replaceScene:[SceneName scene] withTransition:[CCTransition transitionFadeWithColor:[CCColor yellowColor] duration:1]];
```

#### Fade With Duration Transition
```
[[CCDirector sharedDirector] replaceScene:[SceneName scene] withTransition:[CCTransition transitionFadeWithDuration:1]];
```

#### Move In With Direction Transition
```
[[CCDirector sharedDirector] replaceScene:[SceneName scene] withTransition:[CCTransition transitionMoveInWithDirection:CCTransitionDirectionRight duration:1]];
```

#### Push With Direction Transition
```
[[CCDirector sharedDirector] replaceScene:[SceneName scene] withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionRight duration:1]];
```

#### Reveal With Direction Transition
```
[[CCDirector sharedDirector] replaceScene:[SceneName scene] withTransition:[CCTransition transitionRevealWithDirection:CCTransitionDirectionRight duration:1]];
```


## Notes
Project based on 5 Classes, 3 classes are project scenes, and 2 classes (FirstScene + SecondScene) are transitioned scenes (for implementing transition examples).
