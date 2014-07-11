//
//  SecondScene.m
//  Transition On Cocos2d
//
//  Created by Ahmed Alkatheeri on 7/10/14.
//  Copyright 2014 Ahmed Alkatheeri. All rights reserved.
//

#import "SecondScene.h"
#import "FirstScene.h"
@implementation SecondScene

+(SecondScene*) scene {
    return [[self alloc] init];
}
-(id) init {
    
    self = [super init];
    if (!self) return(nil);
    
    /*
        Setup some variables
    */
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    /*
        Create background
    */
    CCSprite *background = [CCSprite spriteWithImageNamed:@"transition-scene-list-background.png"];
    background.position = ccp(self.contentSize.width/2, self.contentSize.height/2);
    [self addChild:background];
    
    /*
        Create title of scene (transition type)
    */
    CCLabelTTF *transitionName = [CCLabelTTF labelWithString:appDelegate.sceneData.typeOfTransition fontName:@"MarkerFelt-Thin" fontSize:30];
    transitionName.position = ccp(self.contentSize.width/2, self.contentSize.height/2);
    [self addChild:transitionName];
    
    /*
     
    */
    CCButton *mainSceneButton = [CCButton buttonWithTitle:@"Back to transitions list" fontName:@"MarkerFelt-Thin" fontSize:15];
    mainSceneButton.color = [CCColor yellowColor];
    //[mainSceneButton setLabelColor:[CCColor yellowColor] forState:CCControlStateHighlighted];
    [mainSceneButton setTarget:self selector:@selector(mainSceneButtonSelector)];
    mainSceneButton.position = ccp(self.contentSize.width/2, 40);
    [self addChild:mainSceneButton];
    
    return self;
}

-(void) mainSceneButtonSelector {
    
    if ([appDelegate.sceneData.typeOfTransition isEqualToString:@"Cross Fade With Duration Transition"]) {
        
        [[CCDirector sharedDirector] replaceScene:[FirstScene scene] withTransition:[CCTransition transitionCrossFadeWithDuration:appDelegate.sceneData.secondsOfSceneMove]];
        
    } else if ([appDelegate.sceneData.typeOfTransition isEqualToString:@"Fade With Color Transition"]) {
        
        [[CCDirector sharedDirector] replaceScene:[FirstScene scene] withTransition:[CCTransition transitionFadeWithColor:[CCColor redColor] duration:appDelegate.sceneData.secondsOfSceneMove]];
        
    } else if ([appDelegate.sceneData.typeOfTransition isEqualToString:@"Fade With Duration Transition"]) {
        
        [[CCDirector sharedDirector] replaceScene:[FirstScene scene] withTransition:[CCTransition transitionFadeWithDuration:appDelegate.sceneData.secondsOfSceneMove]];
        
    } else if ([appDelegate.sceneData.typeOfTransition isEqualToString:@"Move In With Direction Transition"]) {
        
        [[CCDirector sharedDirector] replaceScene:[FirstScene scene] withTransition:[CCTransition transitionMoveInWithDirection:CCTransitionDirectionLeft duration:appDelegate.sceneData.secondsOfSceneMove]];
        
    } else if ([appDelegate.sceneData.typeOfTransition isEqualToString:@"Push With Direction Transition"]) {
        
        [[CCDirector sharedDirector] replaceScene:[FirstScene scene] withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionLeft duration:appDelegate.sceneData.secondsOfSceneMove]];
        
    } else if ([appDelegate.sceneData.typeOfTransition isEqualToString:@"Reveal With Direction Transition"]) {
        
        [[CCDirector sharedDirector] replaceScene:[FirstScene scene] withTransition:[CCTransition transitionRevealWithDirection:CCTransitionDirectionLeft duration:appDelegate.sceneData.secondsOfSceneMove]];
        
    }
    
}

@end
