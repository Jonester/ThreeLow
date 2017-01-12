//
//  Dice.m
//  ThreeLow
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Dice.h"
#import "GameManager.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self diceRoll];
    }
    return self;
}

- (NSInteger)diceRoll {
    
    GameManager *gameManager = [GameManager new];
    
    self.currentValue = arc4random_uniform(5) + 1;
    self.face = gameManager.dieFaceValues[@(self.currentValue)];
    return self.currentValue;
}

@end
