//
//  DiceManager.h
//  ThreeLow
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dice;

@interface GameManager : NSObject

@property (nonatomic) NSArray <Dice*> *diceArray;
@property (nonatomic) NSMutableSet *heldDiceSet;
@property (nonatomic) NSString *dieFace; //make this equal to the value of each dictionary key
@property (nonatomic) NSInteger dieValue;

- (void)diceRoll: (Dice *)dice;

@end
