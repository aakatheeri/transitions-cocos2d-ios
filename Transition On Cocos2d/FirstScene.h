//
//  FirstScene.h
//  Transition On Cocos2d
//
//  Created by Ahmed Alkatheeri on 7/10/14.
//  Copyright 2014 Ahmed Alkatheeri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "AppDelegate.h"

@interface FirstScene : CCScene {
    AppDelegate *appDelegate;
}
+(FirstScene*) scene;
@end
