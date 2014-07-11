//
//  MainScene.m
//  Transition On Cocos2d
//
//  Created by Ahmed Alkatheeri on 7/11/14.
//  Copyright 2014 Ahmed Alkatheeri. All rights reserved.
//

#import "MainScene.h"
#import "FirstScene.h"

@implementation MainScene
+(MainScene*) scene {
    return [[self alloc] init];
}

-(id) init {
    self = [super init];
    if (!self) return(nil);
    
    /*
        Create background
    */
    CCSprite *background = [CCSprite spriteWithImageNamed:@"transitions-list-background.png"];
    background.position = ccp(self.contentSize.width/2, self.contentSize.height/2);
    [self addChild:background];
    
    /*
        Short description
    */
    CCLabelTTF *desc = [CCLabelTTF labelWithString:@"This is a samble app that shows the\n kinds of cocos2d v.3 transitions." fontName:@"MarkerFelt-Thin" fontSize:20];
    desc.dimensions = CGSizeMake(self.contentSize.width, 45);
    desc.color = [CCColor blackColor];
    desc.position = ccp(self.contentSize.width/2, self.contentSize.height - 40);
    desc.horizontalAlignment = CCTextAlignmentCenter;
    [self addChild:desc z:1];
    
    /*
        List of transition button
    */
    CCButton *listButton = [CCButton buttonWithTitle:@"List Of Cocos2d Transitions" fontName:@"MarkerFelt-Thin" fontSize:35];
    listButton.color = [CCColor orangeColor];
    [listButton setLabelColor:[CCColor redColor] forState:CCControlStateHighlighted];
    listButton.position = ccp(self.contentSize.width/2, self.contentSize.height/2);
    [listButton setTarget:self selector:@selector(listOfTransitionsSelector)];
    [self addChild:listButton z:1];
    
    /*
        Information about app creator
    */
    CCLabelTTF *about = [CCLabelTTF labelWithString:@"Created by Ahmed Alkatheeri => @ahmedk901" fontName:@"MarkerFelt-Thin" fontSize:12];
    about.color = [CCColor colorWithCcColor3b:ccc3(75, 79, 88)];
    about.position = ccp(self.contentSize.width/2, 20);
    about.horizontalAlignment = CCTextAlignmentCenter;
    [self addChild:about z:1];
    
    return self;
}

-(void) listOfTransitionsSelector {
    [[CCDirector sharedDirector] replaceScene:[FirstScene scene] withTransition:[CCTransition transitionFadeWithDuration:0.3]];
}

@end
