//
//  DiceManager.m
//  ThreeLow
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "GameManager.h"
#import "Dice.h"

@implementation GameManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceArray = [NSArray new];
        _dieValue = arc4random_uniform(5) + 1;
        _dieFace = [NSString new];
    }
    return self;
}



-(void)holdDie {
    
}

- (void)diceRoll: (Dice *)dice {
    self.dieValue = arc4random_uniform(5) + 1;
    self.dieFace = dice.dieFaces[@(self.dieValue)];
}


@end
