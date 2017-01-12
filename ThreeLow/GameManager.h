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
@property (nonatomic) NSDictionary *dieFaceValues;
@property (nonatomic) NSMutableSet *heldDiceSet;

- (NSInteger)diceRoll;

@end
