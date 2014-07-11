//
//  SceneData.m
//  Transition On Cocos2d
//
//  Created by Ahmed Alkatheeri on 7/10/14.
//  Copyright (c) 2014 Ahmed Alkatheeri. All rights reserved.
//

#import "SceneData.h"

@implementation SceneData

-(id) init {
    
    self = [super init];
    if (!self) return(nil);
    
    _typeOfTransition = @"";
    _secondsOfSceneMove = 0.5;
    
    return self;
}

@end
