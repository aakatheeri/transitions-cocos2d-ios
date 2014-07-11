//
//  FirstScene.m
//  Transition On Cocos2d
//
//  Created by Ahmed Alkatheeri on 7/10/14.
//  Copyright 2014 Ahmed Alkatheeri. All rights reserved.
//

#import "FirstScene.h"
#import "MainScene.h"
#import "SecondScene.h"

@implementation FirstScene

+(FirstScene*) scene {
    return [[self alloc] init];
}

-(id) init {
    
    self = [super init];
    if (!self) return(nil);
    
    /*
        Setup some variables
    */
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    NSString *buttonFontName = @"MarkerFelt-Thin";
    int buttonFontSize = 19;
    
    /*
        Create background
    */
    CCSprite *background = [CCSprite spriteWithImageNamed:@"transitions-list-background.png"];
    background.position = ccp(self.contentSize.width/2, self.contentSize.height/2);
    [self addChild:background];

    /*
        Transition buttons
    */
    CCButton *transitionCrossFadeWithDuration = [CCButton buttonWithTitle:@"Cross Fade With Duration Transition"  fontName:buttonFontName fontSize:buttonFontSize];
    transitionCrossFadeWithDuration.color = [CCColor blackColor];
    [transitionCrossFadeWithDuration setLabelColor:[CCColor blueColor] forState:CCControlStateHighlighted];
    [transitionCrossFadeWithDuration setTarget:self selector:@selector(transitionCrossFadeWithDurationSelector)];
    
    CCButton *transitionFadeWithColor = [CCButton buttonWithTitle:@"Fade With Color Transition" fontName:buttonFontName fontSize:buttonFontSize];
    transitionFadeWithColor.color = [CCColor blackColor];
    [transitionFadeWithColor setLabelColor:[CCColor blueColor] forState:CCControlStateHighlighted];
    [transitionFadeWithColor setTarget:self selector:@selector(transitionFadeWithColorSelector)];
    
    CCButton *transitionFadeWithDuration = [CCButton buttonWithTitle:@"Fade With Duration Transition" fontName:buttonFontName fontSize:buttonFontSize];
    transitionFadeWithDuration.color = [CCColor blackColor];
    [transitionFadeWithDuration setLabelColor:[CCColor blueColor] forState:CCControlStateHighlighted];
    [transitionFadeWithDuration setTarget:self selector:@selector(transitionFadeWithDurationSelector)];
    
    CCButton *transitionMoveInWithDirection = [CCButton buttonWithTitle:@"Move In With Direction (Right Direction) Transition" fontName:buttonFontName fontSize:buttonFontSize];
    transitionMoveInWithDirection.color = [CCColor blackColor];
    [transitionMoveInWithDirection setLabelColor:[CCColor blueColor] forState:CCControlStateHighlighted];
    [transitionMoveInWithDirection setTarget:self selector:@selector(transitionMoveInWithDirectionSelector)];
    
    CCButton *transitionPushWithDirection = [CCButton buttonWithTitle:@"Push With Direction (Right Direction) Transition" fontName:buttonFontName fontSize:buttonFontSize];
    transitionPushWithDirection.color = [CCColor blackColor];
    [transitionPushWithDirection setLabelColor:[CCColor blueColor] forState:CCControlStateHighlighted];
    [transitionPushWithDirection setTarget:self selector:@selector(transitionPushWithDirectionSelector)];
    
    CCButton *transitionRevealWithDirection = [CCButton buttonWithTitle:@"Reveal With Direction (Right Direction) Transition" fontName:buttonFontName fontSize:buttonFontSize];
    transitionRevealWithDirection.color = [CCColor blackColor];
    [transitionRevealWithDirection setLabelColor:[CCColor blueColor] forState:CCControlStateHighlighted];
    [transitionRevealWithDirection setTarget:self selector:@selector(transitionRevealWithDirectionSelector)];
    
    /*
        Menu of transitions
    */
    CCLayoutBox *transitionsList = [[CCLayoutBox alloc] init];
    transitionsList.anchorPoint = ccp(0.5, 0.5);
    
    [transitionsList addChild:transitionRevealWithDirection];
    [transitionsList addChild:transitionPushWithDirection];
    [transitionsList addChild:transitionMoveInWithDirection];
    [transitionsList addChild:transitionFadeWithDuration];
    [transitionsList addChild:transitionFadeWithColor];
    [transitionsList addChild:transitionCrossFadeWithDuration];
    
    transitionsList.spacing = 20.f;
    transitionsList.direction = CCLayoutBoxDirectionVertical;
    [transitionsList layout];
    transitionsList.position = ccp(self.contentSize.width/2, self.contentSize.height/2);
    [self addChild:transitionsList z:1];
    
    /*
        Back button
    */
    CCButton *backButton = [CCButton buttonWithTitle:@"Back to home" fontName:buttonFontName fontSize:15];
    backButton.position = ccp(self.contentSize.width - backButton.contentSize.width/2 - 13, self.contentSize.height - 20);
    backButton.color = [CCColor colorWithCcColor3b:ccc3(72, 73, 81)];
    [backButton setLabelColor:[CCColor colorWithCcColor3b:ccc3(161, 0, 21)] forState:CCControlStateHighlighted];
    [backButton setTarget:self selector:@selector(backButtonSelector)];
    [self addChild:backButton z:1];
    
    return self;
}


/*
    Selectors
*/
-(void) transitionCrossFadeWithDurationSelector {
    appDelegate.sceneData.typeOfTransition = @"Cross Fade With Duration Transition";
    [[CCDirector sharedDirector] replaceScene:[SecondScene scene] withTransition:[CCTransition transitionCrossFadeWithDuration:appDelegate.sceneData.secondsOfSceneMove]];
}
-(void) transitionFadeWithColorSelector {
    appDelegate.sceneData.typeOfTransition = @"Fade With Color Transition";
    [[CCDirector sharedDirector] replaceScene:[SecondScene scene] withTransition:[CCTransition transitionFadeWithColor:[CCColor redColor] duration:appDelegate.sceneData.secondsOfSceneMove]];
}
-(void) transitionFadeWithDurationSelector {
    appDelegate.sceneData.typeOfTransition = @"Fade With Duration Transition";
    [[CCDirector sharedDirector] replaceScene:[SecondScene scene] withTransition:[CCTransition transitionFadeWithDuration:appDelegate.sceneData.secondsOfSceneMove]];
}
-(void) transitionMoveInWithDirectionSelector {
    appDelegate.sceneData.typeOfTransition = @"Move In With Direction Transition";
    [[CCDirector sharedDirector] replaceScene:[SecondScene scene] withTransition:[CCTransition transitionMoveInWithDirection:CCTransitionDirectionRight duration:appDelegate.sceneData.secondsOfSceneMove]];
}
-(void) transitionPushWithDirectionSelector {
    appDelegate.sceneData.typeOfTransition = @"Push With Direction Transition";
    [[CCDirector sharedDirector] replaceScene:[SecondScene scene] withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionRight duration:appDelegate.sceneData.secondsOfSceneMove]];
}
-(void) transitionRevealWithDirectionSelector {
    appDelegate.sceneData.typeOfTransition = @"Reveal With Direction Transition";
    [[CCDirector sharedDirector] replaceScene:[SecondScene scene] withTransition:[CCTransition transitionRevealWithDirection:CCTransitionDirectionRight duration:appDelegate.sceneData.secondsOfSceneMove]];
}
-(void) backButtonSelector {
    [[CCDirector sharedDirector] replaceScene:[MainScene scene] withTransition:[CCTransition transitionFadeWithDuration:0.3]];
}

@end
