//
//  SecondScene.h
//  Transition On Cocos2d
//
//  Created by Ahmed Alkatheeri on 7/10/14.
//  Copyright 2014 Ahmed Alkatheeri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "AppDelegate.h"
@interface SecondScene : CCScene {
    AppDelegate *appDelegate;
}
+(SecondScene*) scene;
@end
